/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "MMUIViewController.h"
#import "UIAlertViewDelegate.h"
#import "RecoverDataManagerDelegate.h"

@class RecoverDataManager, MMTableViewInfo, NSObject, NSString, MMLoadingView;
@protocol OS_dispatch_queue;

@interface RecoverDataViewController : MMUIViewController <RecoverDataManagerDelegate, UIAlertViewDelegate> {
	MMTableViewInfo* m_tableViewInfo;
	MMLoadingView* m_loadingView;
	RecoverDataManager* m_recoverDataMgr;
	NSObject<OS_dispatch_queue>* m_workQueue;
	BOOL m_isRunning;
	NSString* _m_selName;
}
@property(retain, nonatomic) NSString* m_selName;
@property(readonly, copy) NSString* debugDescription;
@property(readonly, copy) NSString* description;
@property(readonly, assign) Class superclass;
@property(readonly, assign) unsigned hash;
@property(readonly, copy) NSString* debugDescription;
@property(readonly, copy) NSString* description;
@property(readonly, assign) Class superclass;
@property(readonly, assign) unsigned hash;
-(void).cxx_destruct;
-(void)forceToClose;
-(void)onRecoverFailure;
-(void)onRecoverSuccess;
-(void)onLowSpaceForDBRecover:(id)dbrecover;
-(void)onDoRecover:(id)recover;
-(void)selectCell:(id)cell;
-(void)makeCell:(id)cell cellInfo:(id)info;
-(void)addRecoverName:(id)name order:(unsigned)order;
-(void)initView;
-(void)adjustTableViewRect;
-(void)viewDidLoad;
-(void)dealloc;
-(id)init;
-(void)onAddRecoverData:(id)data order:(unsigned)order;
-(void)finishAlertView:(id)view clickedButtonAtIndex:(int)index;
-(void)startAlertView:(id)view clickedButtonAtIndex:(int)index;
-(void)alertView:(id)view clickedButtonAtIndex:(int)index;
@end

