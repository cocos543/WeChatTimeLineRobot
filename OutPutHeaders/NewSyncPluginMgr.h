/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "MMService.h"
#import "PBMessageObserverDelegate.h"
#import "MessageObserverDelegate.h"
#import "MMService.h"

@class NSString, NSRecursiveLock, NSMutableDictionary;

@interface NewSyncPluginMgr : MMService <MMService, PBMessageObserverDelegate, MessageObserverDelegate> {
	NSMutableDictionary* m_dicSelectorList;
	NSRecursiveLock* m_oMgrLock;
}
@property(readonly, copy) NSString* debugDescription;
@property(readonly, copy) NSString* description;
@property(readonly, assign) Class superclass;
@property(readonly, assign) unsigned hash;
@property(retain, nonatomic) NSMutableDictionary* m_dicSelectorList;
-(void).cxx_destruct;
-(void)MessageReturn:(unsigned long)aReturn MessageInfo:(id)info Event:(unsigned long)event;
-(void)MessageReturn:(id)aReturn Event:(unsigned long)event;
-(void)CheckSelector:(unsigned long)selector Request:(id)request;
-(void)MergeKeyBufferByType:(unsigned long)type Buffer:(id)buffer;
-(id)GetKeyBufferByType:(unsigned long)type;
-(BOOL)IsMd5Different:(unsigned long)different Md5:(id)a5;
-(void)SetSyncKeyMd5BySelector:(unsigned long)selector Md5:(id)a5;
-(id)GetSyncWrapBySelector:(unsigned long)selector;
-(unsigned long)GetCgiBySelector:(unsigned long)selector;
-(unsigned long)GetSelectorByCgi:(unsigned long)cgi;
-(void)SetContinueFlag:(BOOL)flag Selector:(unsigned long)selector;
-(void)SetSyncIngFlag:(BOOL)flag Selector:(unsigned long)selector;
-(BOOL)IsSelectorContinue:(unsigned long)aContinue;
-(BOOL)IsSelectorSyncIng:(unsigned long)ing;
-(void)ResetNewSyncWrap:(unsigned long)wrap;
-(void)InitSelectorList;
-(void)dealloc;
-(id)init;
@end

