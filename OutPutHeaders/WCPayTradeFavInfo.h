/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import <XXUnknownSuperclass.h> // Unknown library

@class NSDictionary, WCPayFavorComposeInfo, NSString, NSArray;

@interface WCPayTradeFavInfo : XXUnknownSuperclass {
	unsigned long long m_uiTrandeAmount;
	unsigned long long m_uiTotalFavAmount;
	unsigned long long m_uiAfterFavorTradeAmount;
	NSString* m_nsFavorCompseid;
	NSArray* m_arrTradeFavItemList;
	NSArray* m_arrWCPayFavorComposeInfo;
	WCPayFavorComposeInfo* m_oSelectedFavorComposeInfo;
	NSDictionary* m_dicItemSelectStatus;
	BOOL m_bNeedShowedMoreFavInfo;
	unsigned long long m_uiShowFavorAmount;
	unsigned long long m_uiInvariableFavorAmount;
	BOOL m_bIsVariableFavor;
	NSString* m_nsInvariableFavorDesc;
	NSString* m_nsVariableFavorDesc;
}
@property(retain, nonatomic) NSString* m_nsVariableFavorDesc;
@property(retain, nonatomic) NSString* m_nsInvariableFavorDesc;
@property(assign, nonatomic) BOOL m_bIsVariableFavor;
@property(assign, nonatomic) unsigned long long m_uiInvariableFavorAmount;
@property(assign, nonatomic) unsigned long long m_uiShowFavorAmount;
@property(assign, nonatomic) BOOL m_bNeedShowedMoreFavInfo;
@property(retain, nonatomic) WCPayFavorComposeInfo* m_oSelectedFavorComposeInfo;
@property(retain, nonatomic) NSArray* m_arrWCPayFavorComposeInfo;
@property(retain, nonatomic) NSArray* m_arrTradeFavItemList;
@property(retain, nonatomic) NSString* m_nsFavorCompseid;
@property(assign, nonatomic) unsigned long long m_uiAfterFavorTradeAmount;
@property(assign, nonatomic) unsigned long long m_uiTotalFavAmount;
@property(assign, nonatomic) unsigned long long m_uiTrandeAmount;
-(void).cxx_destruct;
-(void)dealloc;
@end

