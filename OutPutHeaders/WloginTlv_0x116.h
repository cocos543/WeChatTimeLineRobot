/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "WloginTlv.h"


@interface WloginTlv_0x116 : WloginTlv {
	unsigned char cVer;
	unsigned dwMiscBitmap;
	unsigned dwGetAppSig;
	unsigned char cAppidNum;
	unsigned adwAppidList[10];
}
@property(assign, nonatomic) unsigned char cAppidNum;
@property(assign, nonatomic) unsigned dwGetAppSig;
@property(assign, nonatomic) unsigned dwMiscBitmap;
@property(assign, nonatomic) unsigned char cVer;
-(int)encode:(id)encode;
-(unsigned)adwAppidWithIndex:(unsigned char)index;
-(void)setAdwAppidList:(unsigned)list withIndex:(unsigned char)index;
@end

