/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "WCPayNewFetchViewControllerDelegate.h"
#import "WCPayPayMoneyLogicDelegate.h"
#import "WCBaseControlMgrExt.h"
#import "WCBaseControlLogicDeleagte.h"
#import "WCPayControlLogic.h"

@class NSArray, NSString, WCPayPayMoneyLogic, WCPayAddPayCardLogic, WCPayBalanceTipsLogic;

@interface WCPayBalanceFetchMoneyControlLogic : WCPayControlLogic <WCBaseControlLogicDeleagte, WCPayPayMoneyLogicDelegate, WCPayNewFetchViewControllerDelegate, WCBaseControlMgrExt> {
	WCPayPayMoneyLogic* m_payLogic;
	WCPayAddPayCardLogic* m_oWCPayAddPayCardLogic;
	WCPayBalanceTipsLogic* m_oContinueTipLogic;
	WCPayBalanceTipsLogic* m_oFirstChargeTipLogic;
	WCPayBalanceTipsLogic* m_oNotEnoughtFeeTipLogic;
	BOOL m_bHaveShowFisrtChargeTip;
	NSArray* m_arrMyAllCardsBeforeAddCard;
	BOOL m_bAddingNewCard;
}
@property(readonly, copy) NSString* debugDescription;
@property(readonly, copy) NSString* description;
@property(readonly, assign) Class superclass;
@property(readonly, assign) unsigned hash;
-(void).cxx_destruct;
-(id)getAvailableCards;
-(id)getNewBindCard;
-(void)storeAllExistCards;
-(void)OnGetBindQueryInfo:(id)info Error:(id)error;
-(void)onClickFetchAll;
-(void)showNotEnoughForFeeAlert:(id)feeAlert;
-(void)showFirstFetchInfoAlert:(id)alert notEnoughtForFee:(id)fee;
-(void)OnGetBalanceFetchRequest:(id)request ExtData:(id)data Error:(id)error;
-(void)OnContinueFetch;
-(void)doAddCard;
-(void)WCPayFetchViewControllerAddCard;
-(void)WCPayFetchViewControllerNext:(id)next FetchAll:(BOOL)all;
-(void)WCPayFetchViewControllerCancel:(BOOL)cancel;
-(BOOL)gotoViewController:(id)controller;
-(void)onWCBaseLogicDidStop:(unsigned long)onWCBaseLogic;
-(void)stopLogic;
-(void)dealloc;
-(void)startLogic;
@end
