/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "WeChat-Structs.h"
#import <XXUnknownSuperclass.h> // Unknown library


@interface MMLockLine : XXUnknownSuperclass {
	BOOL _isFullPath;
	CGPoint _fromPoint;
	CGPoint _toPoint;
}
@property(assign, nonatomic) BOOL isFullPath;
@property(assign, nonatomic) CGPoint toPoint;
@property(assign, nonatomic) CGPoint fromPoint;
-(id)initWithFromPoint:(CGPoint)point toPoint:(CGPoint)point2 AndIsFullPath:(BOOL)path;
@end
