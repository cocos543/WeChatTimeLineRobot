/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: (null)
 */

#import "WeChat-Structs.h"
#import "UIScrollViewDelegate.h"
#import "MMImageScrollViewHelperDelegate.h"
#import "MMUIScrollView.h"

@class UIImageView, NSArray, NSString, UIActivityIndicatorView, MMImageScrollViewHelper;
@protocol ImageScrollViewDelegate;

@interface ImageScrollView : MMUIScrollView <UIScrollViewDelegate, MMImageScrollViewHelperDelegate> {
	UIImageView* imageView;
	UIActivityIndicatorView* mActivityIndicator;
	MMImageScrollViewHelper* m_scrollViewHelper;
	BOOL m_bIsLongPressHandled;
	BOOL isLoaded;
	id<ImageScrollViewDelegate> m_delegate;
}
@property(copy, nonatomic) NSArray* gestureRecognizers;
@property(assign, nonatomic) float maximumZoomScale;
@property(assign, nonatomic) float minimumZoomScale;
@property(assign, nonatomic) float zoomScale;
@property(assign, nonatomic) CGRect frame;
@property(readonly, copy) NSString* debugDescription;
@property(readonly, copy) NSString* description;
@property(readonly, assign) Class superclass;
@property(readonly, assign) unsigned hash;
@property(assign, nonatomic) BOOL isLoaded;
@property(assign) __weak id<ImageScrollViewDelegate> m_delegate;
-(void).cxx_destruct;
-(void)LongPressEvents;
-(void)LongPressBegin;
-(void)pressedEvents;
-(void)touchesCancelled:(id)cancelled withEvent:(id)event;
-(void)touchesEnded:(id)ended withEvent:(id)event;
-(void)touchesBegan:(id)began withEvent:(id)event;
-(id)getImageView;
-(id)getImage;
-(void)updateImage:(id)image;
-(void)displayImage:(id)image withFrame:(CGRect)frame;
-(void)displayImage:(id)image withFrame:(CGRect)frame FullScreen:(BOOL)screen;
-(void)dealloc;
-(void)displayImage:(id)image withFrame:(CGRect)frame FullScreen:(BOOL)screen CornerRadius:(float)radius;
-(void)reloadView:(id)view FullScreen:(BOOL)screen;
-(void)scrollViewDidZoom:(id)scrollView;
-(void)scrollViewWillBeginZooming:(id)scrollView withView:(id)view;
-(id)viewForZoomingInScrollView:(id)scrollView;
-(id)getScrollView;
-(id)viewForZooming;
-(id)initWithFrame:(CGRect)frame;
-(void)onDoubleTap:(id)tap;
@end

