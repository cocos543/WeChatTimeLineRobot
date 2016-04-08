/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "MMService.h"
#import "MMService.h"

@class MMFreeSpaceCheckConfig, MMTimer, NSString;

@interface MMFreeSpaceCheckMgr : MMService <MMService> {
	MMFreeSpaceCheckConfig* m_config;
	MMTimer* m_checkFreeSpaceTimer;
}
@property(readonly, copy) NSString* debugDescription;
@property(readonly, copy) NSString* description;
@property(readonly, assign) Class superclass;
@property(readonly, assign) unsigned hash;
+(id)testFilePath;
+(id)configPath;
+(id)workDir;
+(BOOL)getFreeSize:(unsigned long long*)size;
+(BOOL)isLowSpace:(unsigned long long)space;
+(BOOL)isUrgentSpace:(unsigned long long)space;
-(void).cxx_destruct;
-(void)renewAlertLowSpaceTime;
-(void)renewAlertUrgentSpaceTime;
-(void)saveConfig;
-(void)loadConfig;
-(void)createWorkDir;
-(void)alertLowSpace;
-(void)alertUrgentSpace;
-(void)setup;
-(void)CheckFreeSpace;
-(void)onServiceEnterForeground;
-(void)onServiceEnterBackground;
-(void)onServiceInit;
-(id)init;
@end
