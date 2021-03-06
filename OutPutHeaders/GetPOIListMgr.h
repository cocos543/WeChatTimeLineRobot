/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "MMService.h"
#import "PBMessageObserverDelegate.h"
#import "WeChat-Structs.h"
#import "MMService.h"

@class SKBuiltinBuffer_t, NSString;

@interface GetPOIListMgr : MMService <PBMessageObserverDelegate, MMService> {
	SKBuiltinBuffer_t* _nearBuff;
	SKBuiltinBuffer_t* _searchBuff;
	XXStruct_gLbvpC _lastCoordinate;
}
@property(readonly, copy) NSString* debugDescription;
@property(readonly, copy) NSString* description;
@property(readonly, assign) Class superclass;
@property(readonly, assign) unsigned hash;
@property(retain, nonatomic) SKBuiltinBuffer_t* searchBuff;
@property(retain, nonatomic) SKBuiltinBuffer_t* nearBuff;
-(void).cxx_destruct;
-(void)MessageReturn:(id)aReturn Event:(unsigned long)event;
-(BOOL)getSearchPOIList:(XXStruct_gLbvpC)list KeyWord:(id)word StartFromFirst:(BOOL)first Scene:(unsigned)scene UserActuallyLocation:(id)location;
-(BOOL)autoSearchPOIList:(XXStruct_gLbvpC)list Keyword:(id)keyword Scene:(unsigned)scene UserActuallyLocation:(id)location StartFromFirst:(BOOL)first;
-(BOOL)getNearPOIList:(XXStruct_gLbvpC)list StartFromFirst:(BOOL)first Scene:(unsigned)scene UserActuallyLocation:(id)location;
-(void)dealloc;
@end

