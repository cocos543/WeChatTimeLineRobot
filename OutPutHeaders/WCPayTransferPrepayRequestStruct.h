/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import <XXUnknownSuperclass.h> // Unknown library

@class NSString;

@interface WCPayTransferPrepayRequestStruct : XXUnknownSuperclass {
	NSString* m_nsReceiverUserName;
	unsigned long long m_uiTotalFee;
	unsigned long m_uiFeeType;
	NSString* m_nsExtInfo;
	unsigned long m_uiPayScene;
	int m_transferScene;
	NSString* m_nsProducetDesc;
	NSString* m_nsFacingPaidID;
	unsigned long m_uiPayChannel;
}
@property(assign, nonatomic) unsigned long m_uiPayChannel;
@property(retain, nonatomic) NSString* m_nsFacingPaidID;
@property(retain, nonatomic) NSString* m_nsProducetDesc;
@property(assign, nonatomic) int m_transferScene;
@property(assign, nonatomic) unsigned long m_uiPayScene;
@property(retain, nonatomic) NSString* m_nsExtInfo;
@property(assign, nonatomic) unsigned long m_uiFeeType;
@property(assign, nonatomic) unsigned long long m_uiTotalFee;
@property(retain, nonatomic) NSString* m_nsReceiverUserName;
-(void).cxx_destruct;
-(void)dealloc;
@end

