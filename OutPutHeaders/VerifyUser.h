/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "WXPBGeneratedMessage.h"

@class NSString;

@interface VerifyUser : WXPBGeneratedMessage {
}
@property(retain, nonatomic) NSString* sourceNickName;
@property(retain, nonatomic) NSString* sourceUserName;
@property(retain, nonatomic) NSString* chatRoomUserName;
@property(assign, nonatomic) unsigned friendFlag;
@property(retain, nonatomic) NSString* antispamTicket;
@property(retain, nonatomic) NSString* verifyUserTicket;
@property(retain, nonatomic) NSString* value;
+(void)initialize;
@end
