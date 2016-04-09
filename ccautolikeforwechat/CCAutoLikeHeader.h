//
//  CCAutoLikeHeader.h
//  WeChatTimeLineRobot
//
//  Created by Cocos on 16/4/5.
//  Copyright © 2016年 Cocos. All rights reserved.
//
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
