/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */



@protocol IVOIPSyncExt
@optional
-(void)OnGotRemoteControlStatus:(unsigned long)status;
-(void)OnGotRemoteRelayData:(id)data;
-(void)OnGotRemoteConnectData:(id)data;
-(void)OnGotRemoteStatus:(unsigned long)status;
-(void)OnSyncError:(int)error;
@end

