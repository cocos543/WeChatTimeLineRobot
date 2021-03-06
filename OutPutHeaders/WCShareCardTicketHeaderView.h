/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "WCShareCardBaseHeaderView.h"
#import "WeChat-Structs.h"

@class WCCardSunkenBgView;
@protocol WCShareCardTicketCardHeaderDelegate;

@interface WCShareCardTicketHeaderView : WCShareCardBaseHeaderView {
	id<WCShareCardTicketCardHeaderDelegate> _delegate;
	WCCardSunkenBgView* _cardBgView;
	MMUIView* _cardContentView;
}
@property(retain, nonatomic) MMUIView* cardContentView;
@property(retain, nonatomic) WCCardSunkenBgView* cardBgView;
@property(assign, nonatomic) __weak id<WCShareCardTicketCardHeaderDelegate> delegate;
-(void).cxx_destruct;
-(float)getRealHeight;
-(void)onClickApplyBtn:(id)btn;
-(void)initTicketCardContentView;
-(void)initView;
-(id)initWithViewWidth:(float)viewWidth withCardSourceData:(id)cardSourceData cardStatus:(int)status isNeedHideAcceptBtn:(BOOL)btn delegate:(id)delegate;
@end

