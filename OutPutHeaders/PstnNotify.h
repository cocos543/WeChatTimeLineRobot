/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "WXPBGeneratedMessage.h"

@class NSMutableArray;

@interface PstnNotify : WXPBGeneratedMessage {
}
@property(assign, nonatomic) unsigned dtmfPayloadType;
@property(retain, nonatomic) NSMutableArray* userStatusList;
@property(assign, nonatomic) unsigned long long roomKey;
@property(assign, nonatomic) unsigned roomId;
+(void)initialize;
@end
