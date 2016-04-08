/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.

%hook ClassName

// Hooking a class method
+ (id)sharedInstance {
	return %orig;
}

// Hooking an instance method with an argument.
- (void)messageName:(int)argument {
	%log; // Write a message about this call, including its class, name and arguments, to the system log.

	%orig; // Call through to the original function with its original arguments.
	%orig(nil); // Call through to the original function with a custom argument.

	// If you use %orig(), you MUST supply all arguments (except for self and _cmd, the automatically generated ones.)
}

// Hooking an instance method with no arguments.
- (id)noArguments {
	%log;
	id awesome = %orig;
	[awesome doSomethingElse];

	return awesome;
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end
*/

#include "CCAutoLikeHeader.h"

@interface FIFOFileQueue : NSObject
-(BOOL)push:(id)push;
-(id)getAll;
@end

@interface WCCommentUploadMgr : NSObject
-(void)tryStartNextTask;
-(void)pushBackTopTask;
-(void)popTopTask;
-(void)addComment:(id)comment;
-(void)addCommentToWCObjectCache:(id)wcobjectCache;
@end

@interface WCCommentItem : NSObject
@property(retain, nonatomic) NSString* clientID;
@property(assign, nonatomic) unsigned inQueueTime;
@property(assign, nonatomic) unsigned createTime;
@property(assign, nonatomic) int source;
@property(assign, nonatomic) int type;
@property(retain, nonatomic) NSString* itemID;
@property(retain, nonatomic) NSString* toUserName;
@end

@interface WCAdvertiseInfo : NSObject
@end
//@class MMUIButton;
@interface WCDataItem : NSObject
@property(assign, nonatomic) BOOL likeFlag;
@property(retain, nonatomic) NSString* username;
@property(retain, nonatomic) NSString* tid;
@property(retain, nonatomic) WCAdvertiseInfo* advertiseInfo;
-(id)itemID;
@end

@interface WCLikeButton : NSObject
@property(retain, nonatomic) WCDataItem* m_item;
//点赞取消触发方法
-(void)LikeBtnReduceEnd;
//用于初始化
-(id)initWithDataItem:(id)dataItem;
@end


@interface SettingUtil : NSObject
+(id)getCurUsrName;
@end

@interface MMServiceCenter : NSObject
+(id)defaultCenter;
-(id)getService:(Class)className;
@end

@interface WCFacade : NSObject
-(WCDataItem *)getTimelineDataItemOfIndex:(int)index;
//点赞内部调用,这里不用到
-(void)likeObject:(id)object ofUser:(id)user source:(int)source;
////点赞内部调用,这里不用到
-(BOOL)unLikeObject:(id)object ofUser:(id)user;
@end

@interface WCTimeLineViewController : NSObject
-(int)calcDataItemIndex:(int)index;
-(void)ccStartAutoLike;
-(void)ccUpdateDataItemsWithNumber:(int)number;
-(void)ccStartQueueToLike;
@end


static NSMutableArray* ccDataItemsArray;
static int ccDataItemsOffect = 0;
static BOOL ccAutoLiking = NO;
static NSString *ccFirstTidString;
%hook WCTimeLineViewController

%new
-(void)ccStartAutoLike{
	NSLog(@"ccStartAutoLike has been call~ %@",[NSThread currentThread]);
	//执行点赞操作
	WCFacade *wcFacade = [(MMServiceCenter *)[%c(MMServiceCenter) defaultCenter] getService: [%c(WCFacade) class]];
	WCCommentUploadMgr *m_commentUploadMgr = [wcFacade valueForKey:@"m_commentUploadMgr"];
	
	for(WCDataItem *dataItem in ccDataItemsArray){
		if([dataItem advertiseInfo]){
			//别给广告点赞了.......
			return;
		}
		// source 为 0,调试汇编代码可以得到...
		// [wcFacade likeObject:dataItem ofUser:dataItem.username source:0];
		//[wcFacade unLikeObject:dataItem ofUser:dataItem.username];

		//比较深入的点赞操作
		id itemID = [dataItem itemID];
		NSString *username = [dataItem username];
		WCCommentItem *cmItem = [[%c(WCCommentItem) alloc] init];
		[cmItem setItemID:itemID];
		[cmItem setToUserName:username];
		[cmItem setType:1];
		[cmItem setSource:0];
		unsigned time = (unsigned)[[NSDate date] timeIntervalSince1970];
		[cmItem setCreateTime:time];
		[cmItem setInQueueTime:time];
		NSString *curNsrName = [%c(SettingUtil) getCurUsrName];
		FIFOFileQueue *m_queue = [m_commentUploadMgr valueForKey:@"m_queue"];
		unsigned long qcount = [[m_queue getAll] count];
		NSString *clientID = [NSString stringWithFormat:@"wcc:%@-%u-%lu",curNsrName,time,qcount];
		[cmItem setClientID:clientID];
		[m_queue push:cmItem];
		[m_commentUploadMgr addCommentToWCObjectCache:cmItem];
		//执行下面命令后开始点赞

		NSLog(@"do like for %@~~",dataItem.username);
	}
	[m_commentUploadMgr tryStartNextTask];
	ccDataItemsArray = nil;
	ccAutoLiking = NO;
}

%new
-(void)ccUpdateDataItemsWithNumber:(int)number{
	//根据提供的section数量获取dataitems
	WCFacade *wcFacade = [(MMServiceCenter *)[%c(MMServiceCenter) defaultCenter] getService: [%c(WCFacade) class]];
	//取得需要的DataItem对象
	WCDataItem * dataItem;
	BOOL needLike = false;
	
	WCDataItem *firstDataItem = [wcFacade getTimelineDataItemOfIndex:[self calcDataItemIndex:0]];
	if(ccFirstTidString == nil){
		ccFirstTidString = firstDataItem.tid;
	}else if( ![ccFirstTidString isEqualToString:firstDataItem.tid] ){
		//如果首个数据发生变化,则重置offect
		ccFirstTidString = firstDataItem.tid;
		ccDataItemsOffect = 0;
		NSLog(@"reset ccDataItemsOffect~~~");
	}


	for (int i = ccDataItemsOffect; i < number; i++){
		int itemIndex = [self calcDataItemIndex:i];
		if(itemIndex < 0){
			return;
		}
		dataItem = [wcFacade getTimelineDataItemOfIndex:itemIndex];
		if(!dataItem.likeFlag){
			if (!ccDataItemsArray){
				ccDataItemsArray = [[NSMutableArray alloc] init];
			}
			[ccDataItemsArray addObject:dataItem];
			needLike = true;
			NSLog(@"addObject~~~~~~~~~~~~~~");
		}
	}
	ccDataItemsOffect = number;
	if(needLike){
		ccAutoLiking = YES;
		[NSThread detachNewThreadSelector:@selector(ccStartAutoLike) toTarget:self withObject:nil];
		needLike = NO;
	}
}

-(id)tableView:(id)view cellForRowAtIndexPath:(id)indexPath{
	//朋友圈采用一条说说为一个section,section中的正文,点赞列表和评论列表分别为独立的cell
	id cell = %orig;
	return cell;
}

-(int)numberOfSectionsInTableView:(id)tableView{
	int number = %orig;
	NSLog(@"Total number of section is %d,offect is %d",number,ccDataItemsOffect);
	[self ccUpdateDataItemsWithNumber:number];
	return number;
}

-(void)reloadTableView{
	if(!ccAutoLiking){
		%log;
		%orig;
	}
}
%end


