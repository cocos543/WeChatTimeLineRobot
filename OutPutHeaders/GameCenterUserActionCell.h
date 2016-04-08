/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "MMTableViewCell.h"

@class NSArray;
@protocol GameCenterUserActionCellDelegate;

@interface GameCenterUserActionCell : MMTableViewCell {
	NSArray* _cellItems;
	id<GameCenterUserActionCellDelegate> _delegate;
}
@property(assign, nonatomic) __weak id<GameCenterUserActionCellDelegate> delegate;
@property(retain, nonatomic) NSArray* cellItems;
-(void).cxx_destruct;
-(void)onButtonClicked:(id)clicked;
-(void)addButtons;
-(void)layoutSubviews;
-(void)dealloc;
-(id)initWithStyle:(int)style reuseIdentifier:(id)identifier;
@end
