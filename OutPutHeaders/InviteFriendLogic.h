/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "InviteFriendViewDelegate.h"
#import "MMTwitterAuthExt.h"
#import "MFMessageComposeViewControllerDelegate.h"
#import <XXUnknownSuperclass.h> // Unknown library
#import "IMMFacebookMgrExt.h"
#import "MFMailComposeViewControllerDelegate.h"
#import "PBMessageObserverDelegate.h"

@class UIColor, NSString, NSMutableDictionary, NSDictionary, InviteFriendView;
@protocol InviteFriendLogicDelegate;

@interface InviteFriendLogic : XXUnknownSuperclass <MFMessageComposeViewControllerDelegate, MFMailComposeViewControllerDelegate, MMTwitterAuthExt, IMMFacebookMgrExt, PBMessageObserverDelegate, InviteFriendViewDelegate> {
	id<InviteFriendLogicDelegate> m_delegate;
	NSMutableDictionary* m_dicMsg;
	NSMutableDictionary* m_dicSubject;
	BOOL m_bDefaultWording;
	InviteFriendView* m_inviteMsgView;
	UIColor* m_oldBarTintColor;
	NSDictionary* m_oldTitleTextAttributes;
	int m_oldUIBarStyle;
}
@property(readonly, copy) NSString* debugDescription;
@property(readonly, copy) NSString* description;
@property(readonly, assign) Class superclass;
@property(readonly, assign) unsigned hash;
+(BOOL)isShowTwitter;
+(BOOL)isShowFacebook;
+(BOOL)isShowWhatsapp;
+(BOOL)isShowSMS;
+(BOOL)isShowEmail;
+(BOOL)isShowInvite;
+(BOOL)isEntryOnTheTop;
+(BOOL)isShowEntryInContactList;
+(BOOL)isShowEntryInMainFrame;
-(void).cxx_destruct;
-(void)MessageReturn:(id)aReturn Event:(unsigned long)event;
-(void)handlePostMsg:(id)msg;
-(void)handleGetMsg:(id)msg;
-(void)startAgain:(id)again;
-(void)updateWording:(unsigned)wording;
-(void)postInviteMsg:(unsigned)msg msg:(id)msg2;
-(void)onInviteFriendViewPost:(id)post View:(id)view;
-(void)onInviteFriendViewCancel:(id)cancel;
-(void)startInviteTwitter;
-(void)doSentInviteTwitter;
-(void)twitterCheckAccessTokenValidFinished:(int)finished;
-(void)twitterAuthFinished:(int)finished;
-(void)twitterWillStartOpenSafari;
-(void)onTwitterStartAuth;
-(void)onBindFacebookFinish:(unsigned long)finish;
-(void)facebookCheckAccessTokenValidFinished:(BOOL)finished;
-(void)facebookTryAuth;
-(void)doInviteFacebook;
-(void)startInviteFacebook;
-(void)startInviteWhatsapp;
-(void)messageComposeViewController:(id)controller didFinishWithResult:(int)result;
-(void)startInviteMessage;
-(void)mailComposeController:(id)controller didFinishWithResult:(int)result error:(id)error;
-(void)startInviteEmail;
-(void)recoverOldSetting;
-(void)saveOldSetting;
-(id)getSubject:(unsigned)subject;
-(id)getMsg:(unsigned)msg;
-(void)showInviteList:(id)list;
-(void)dealloc;
-(id)initWithDelegate:(id)delegate;
@end

