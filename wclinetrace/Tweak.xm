/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.

%hook ClassName

// Hooking a class method
+ (id)sharedInstance {
	return %orig;
}

// Hooking an instance method with an argument.
- (void)messageName:(int)argument {
	%log; // Write a message about this call, including its class, name and arguments, to the system log.

	%orig; // Call through to the original function with its original arguments.
	%orig(nil); // Call through to the original function with a custom argument.

	// If you use %orig(), you MUST supply all arguments (except for self and _cmd, the automatically generated ones.)
}

// Hooking an instance method with no arguments.
- (id)noArguments {
	%log;
	id awesome = %orig;
	[awesome doSomethingElse];

	return awesome;
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end
*/
@protocol WCTimeLineViewControllerDelegate <NSObject>
@end

@interface MMURLHandler :NSObject
@end

@interface WCDataItem :NSObject
@end

%hook WCTimeLineViewController
- (MMURLHandler* )m_urlHandler { %log; MMURLHandler*  r = %orig; HBLogDebug(@" = %@", r); return r; }
- (void)setM_showCameraRedDot:(BOOL )m_showCameraRedDot { %log; %orig; }
- (BOOL )m_showCameraRedDot { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_hasNewPhotoWhenEnter:(BOOL )m_hasNewPhotoWhenEnter { %log; %orig; }
- (BOOL )m_hasNewPhotoWhenEnter { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }
- (void)setM_hasRefrashHead:(BOOL )m_hasRefrashHead { %log; %orig; }
- (BOOL )m_hasRefrashHead { %log; BOOL  r = %orig; HBLogDebug(@" = %d", r); return r; }

-(void)abTestViewHiddenWrap { %log; %orig; }
-(void)floatViewHiddenWrap { %log; %orig; }
-(void)calADCellYVisible:(BOOL*)visible centerVisible:(BOOL*)visible2 bottomVisible:(BOOL*)visible3 forRowAtIndexPath:(id)indexPath { %log; %orig; }
-(void)recordADCommentEndInfo:(id)info forRowAtIndexPath:(id)indexPath { %log; %orig; }
-(void)recordADCommentMiddleInfo:(id)info forRowAtIndexPath:(id)indexPath { %log; %orig; }
-(void)recordADCommentStartInfo:(id)info forRowAtIndexPath:(id)indexPath { %log; %orig; }
-(void)recordADBodyEndInfo:(id)info forRowAtIndexPath:(id)indexPath { %log; %orig; }
-(void)recordADBodyMiddleInfo:(id)info forRowAtIndexPath:(id)indexPath { %log; %orig; }
-(void)recordADBodyStartInfo:(id)info forRowAtIndexPath:(id)indexPath { %log; %orig; }
-(void)handleABTestTipClickEvent:(id)event actionItem:(id)item dataItem:(id)item3 { %log; %orig; }
-(void)alertView:(id)view clickedButtonAtIndex:(int)index { %log; %orig; }
-(void)showABTestAlert:(id)alert dataItem:(id)item { %log; %orig; }
-(void)tryLogABTestResult:(id)result { %log; %orig; }
-(void)refreshCacheForABTestTip:(id)abtestTip { %log; %orig; }
-(void)tryReportAdCell:(id)cell { %log; %orig; }
-(void)checkDBAutoRecover { %log; %orig; }
-(void)onPlayNewMsgNotify { %log; %orig; }
-(void)onClickTipsBtn:(unsigned)btn { %log; %orig; }
-(BOOL)shouldInteractivePop { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)updateNetworkStatus { %log; %orig; }
-(void)onLinkClicked:(id)clicked backupUrl:(id)url withRect:(CGRect)rect { %log; %orig; }
-(void)onLinkClicked:(id)clicked withRect:(CGRect)rect { %log; %orig; }
-(void)onLinkClickedItem:(id)item url:(id)url backupUrl:(id)url3 withRect:(CGRect)rect { %log; %orig; }
-(void)handleUrl:(id)url backupUrl:(id)url2 { %log; %orig; }
-(void)handleUrl:(id)url backupUrl:(id)url2 item:(id)item { %log; %orig; }
-(void)jumpToUserProfile:(id)userProfile Displayname:(id)displayname Scence:(unsigned long)scence userData:(id)data { %log; %orig; }
-(id)getAppIdFromUrl:(id)url { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)onBindFacebookFinish:(unsigned long)finish { %log; %orig; }
-(void)gestureWillEndTransition:(id)gesture isCanceld:(BOOL)canceld { %log; %orig; }
-(void)onDismissViewController:(id)controller userName:(id)name { %log; %orig; }
-(void)onRestoreCommentView:(id)view ofDataItem:(id)dataItem { %log; %orig; }
-(void)onReloadCommentView:(id)view ofDataItem:(id)dataItem { %log; %orig; }
-(void)onReplyComment:(id)comment ofDataItem:(id)dataItem ofTouchedView:(id)touchedView { %log; %orig; }
-(void)onRestoreTimeLineCellView:(id)view { %log; %orig; }
-(void)cleanCellHeightCache:(id)cache { %log; %orig; }
-(void)onActionClearCellCacheAndRefreshCellView:(id)view { %log; %orig; }
-(void)onEditBlackList:(id)list { %log; %orig; }
-(id)getView { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)onActionLocation:(id)location { %log; %orig; }
-(void)onTimeLineCellMoreMenu:(id)menu forScene:(unsigned)scene { %log; %orig; }
-(void)onTimeLineCellMoreMenu:(id)menu { %log; %orig; }
-(void)onShowDetailViewForDataItem:(id)dataItem { %log; %orig; }
-(void)onUpdateDataItem:(id)item oldHeight:(float)height newHeight:(float)height3 { %log; %orig; }
-(void)onCommentDataItem:(id)item point:(CGPoint)point { %log; %orig; }
-(void)onAdvertiseAction:(id)action point:(CGPoint)point { %log; %orig; }
-(void)onAdActoin:(id)actoin { %log; %orig; }
-(void)onDontLikeWithChoose:(id)choose { %log; %orig; }
-(void)onDontLikeWithOtherReason:(id)otherReason QuestionExp:(id)exp { %log; %orig; }
-(void)onClickTipBtn:(id)btn { %log; %orig; }
-(void)onHideAdvertise:(id)advertise { %log; %orig; }
-(void)onViewAnimationDidHiden { %log; %orig; }
-(void)onViewAnimationWillHide { %log; %orig; }
-(void)onIKnowItBtnClicked { %log; %orig; }
-(void)onTouchDownLikeBtnOnFloatView { %log; %orig; }
-(void)onClickCommentBtnOnFloatView { %log; %orig; }
-(void)showComment:(id)comment refComment:(id)comment2 touchedView:(id)view { %log; %orig; }
-(float)totalHeightFromTopToSection:(unsigned)section { %log; float r = %orig; HBLogDebug(@" = %f", r); return r; }
-(unsigned)sectionIndexForDataItemWithTid:(id)tid { %log; unsigned r = %orig; HBLogDebug(@" = %u", r); return r; }
-(id)visibleTimeLineCellViewWithTid:(id)tid { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)showRewardTipWithItem:(id)item { %log; %orig; }
-(void)showContactInfo { %log; %orig; }
-(void)onReveiceWCMessage:(id)message { %log; %orig; }
-(void)onMessageUnReadCountChanged { %log; %orig; }
-(void)checkNewMessage { %log; %orig; }
-(BOOL)hasUnReadMessage { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)shouldUpdateMessageButton:(id)button { %log; %orig; }
-(void)resetHeaderView { %log; %orig; }
-(void)MMRefreshTableFooterDidTriggerRefresh:(id)mmrefreshTableFooter { %log; %orig; }
-(void)postRewardRedEnvelopes:(id)envelopes { %log; %orig; }
-(void)showUploadOption:(id)option { %log; %orig; }
-(void)showPhotoAlert:(id)alert { %log; %orig; }
-(void)openParticipateRedEnvelepoesActivity { %log; %orig; }
-(void)closeParticipateRedEnvelepoesActivity { %log; %orig; }
-(void)newYearActionSheet:(id)sheet clickedButtonAtIndex:(int)index { %log; %orig; }
-(void)actionSheet:(id)sheet clickedButtonAtIndex:(int)index { %log; %orig; }
-(id)getViewController { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)MMImagePickerManagerDidCancel:(id)mmimagePickerManager { %log; %orig; }
-(void)MMImagePickerManager:(id)manager didFinishPickingImageWithInfo:(id)info { %log; %orig; }
-(void)editShield:(id)shield forScene:(int)scene { %log; %orig; }
-(void)editShield:(id)shield { %log; %orig; }
-(void)editBlackList:(id)list forSource:(int)source { %log; %orig; }
-(void)showImagePicker:(int)picker { %log; %orig; }
-(void)openCommitViewController:(BOOL)controller arrImage:(id)image { %log; %orig; }
-(void)onBarTipClicked { %log; %orig; }
-(BOOL)scrollViewShouldScrollToTop:(id)scrollView { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)refreshHeadForShowTip { %log; %orig; }
-(void)scrollViewDidEndDecelerating:(id)scrollView { %log; %orig; }
-(void)scrollViewDidEndDragging:(id)scrollView willDecelerate:(BOOL)decelerate { %log; %orig; }
-(void)scrollViewDidScroll:(id)scrollView { %log; %orig; }
-(void)scrollViewWillBeginDragging:(id)scrollView { %log; %orig; }
-(void)hideMenu { %log; %orig; }
-(void)logUserOpInfoAsScreenShot { %log; %orig; }
-(BOOL)egoRefreshTableHeaderDataSourceIsLoading:(id)loading { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)egoRefreshTableHeaderDidTriggerRefresh:(id)egoRefreshTableHeader { %log; %orig; }
-(void)stopRefreshHeaderView { %log; %orig; }
-(void)refreshHead { %log; %orig; }
-(void)onWCGroupModMemberReturn:(BOOL)aReturn group:(id)group { %log; %orig; }
-(void)onNoMoreTimelineData { %log; %orig; }
-(void)onDataChangedWithAdded:(id)added andChanged:(id)changed andDeleted:(id)deleted { %log; %orig; }
-(void)onCommentReturn:(id)aReturn { %log; %orig; }
-(void)onLoadMore { %log; %orig; }
-(void)initData { %log; %orig; }
-(void)onMenuControllerWillHide:(id)onMenuController { %log; %orig; }
-(void)onMenuControllerDidHide:(id)onMenuController { %log; %orig; }
-(void)onMenuControllerWillShow:(id)onMenuController { %log; %orig; }
-(void)touchesCancelled_TableView:(id)view withEvent:(id)event { %log; %orig; }
-(void)touchesEnded_TableView:(id)view withEvent:(id)event { %log; %orig; }
-(void)touchesMoved_TableView:(id)view withEvent:(id)event { %log; %orig; }
-(void)touchesBegan_TableView:(id)view withEvent:(id)event { %log; %orig; }
-(void)tryResumeStatus { %log; %orig; }
-(void)tableView:(id)view didSelectRowAtIndexPath:(id)indexPath { %log; %orig; }
-(void)showDetailView:(id)view { %log; %orig; }
-(void)showDetailViewForDataItem:(id)dataItem { %log; %orig; }
-(void)onDeleteData { %log; %orig; }
-(void)onRestartUpload { %log; %orig; }
-(void)showMessageList { %log; %orig; }
-(id)tableView:(id)view cellForRowAtIndexPath:(id)indexPath { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)indexPath { %log; %orig; }
-(void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)indexPath { %log; %orig; }
-(void)tryLogThumbImageLoadedEffiency:(id)effiency { %log; %orig; }
-(void)genRedHeartCell:(id)cell indexPath:(id)path { %log; %orig; }
-(void)genUploadFailCell:(id)cell indexPath:(id)path { %log; %orig; }
-(void)genABTestTipCell:(id)cell indexPath:(id)path { %log; %orig; }
-(void)genNormalCell:(id)cell indexPath:(id)path { %log; %orig; }
-(BOOL)GetIsLastCommentOrLikeCell:(id)cell RowIndex:(int)index { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(BOOL)GetIsCommentCellRow:(id)row RowIndex:(int)index { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)hideAlbumListLineViewInCell:(id)cell { %log; %orig; }
-(void)resetAlbumListLineViewsFrameInCell:(id)cell indexPath:(id)path { %log; %orig; }
-(float)getCellLineContentMarginCurOri { %log; float r = %orig; HBLogDebug(@" = %f", r); return r; }
-(float)tableView:(id)view heightForRowAtIndexPath:(id)indexPath { %log; float r = %orig; HBLogDebug(@" = %f", r); return r; }
-(int)tableView:(id)view numberOfRowsInSection:(int)section { %log; int r = %orig; HBLogDebug(@" = %d", r); return r; }
-(int)numberOfSectionsInTableView:(id)tableView { %log; int r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)hideFloatView { %log; %orig; }
-(int)calcDataItemIndex:(int)index { %log; int r = %orig; HBLogDebug(@" = %d", r); return r; }
-(int)getFirstNormalItemIndex { %log; int r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)willDisshow { %log; %orig; }
-(void)onNetworkActivityStatusChanged { %log; %orig; }
-(void)willShow { %log; %orig; }
-(void)willDisappear { %log; %orig; }
-(void)didAppear { %log; %orig; }
-(void)initGestureRecognizer { %log; %orig; }
-(void)willAppear { %log; %orig; }
-(id)getNavigationRightButton:(id)button { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)viewWillBePoped:(BOOL)view { %log; %orig; }
-(void)viewWillBePushed:(BOOL)view { %log; %orig; }
-(void)viewWillPush:(BOOL)view { %log; %orig; }
-(void)viewDidDisappear:(BOOL)view { %log; %orig; }
-(void)viewWillDisappear:(BOOL)view { %log; %orig; }
-(void)delayReload { %log; %orig; }
-(void)viewWillAppear:(BOOL)view { %log; %orig; }
-(void)didReceiveMemoryWarning { %log; %orig; }
-(void)dealloc { %log; %orig; }
-(BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)panned:(id)panned { %log; %orig; }
-(void)viewDidLoad { %log; %orig; }
-(id)getHongBaoBarButton { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)resetRightBarItem { %log; %orig; }
-(void)viewDidLayoutSubviews { %log; %orig; }
-(void)adjustViewAndNavBarRect { %log; %orig; }
-(void)willRotateToInterfaceOrientation:(int)interfaceOrientation duration:(double)duration { %log; %orig; }
-(unsigned)supportedInterfaceOrientations { %log; unsigned r = %orig; HBLogDebug(@" = %u", r); return r; }
-(BOOL)shouldRotateToInterfaceOrientation:(int)interfaceOrientation { %log; BOOL r = %orig; HBLogDebug(@" = %d", r); return r; }
-(void)resetStatus:(BOOL)status { %log; %orig; }
-(void)startLogBrowseInfo:(BOOL)info { %log; %orig; }
-(void)reportBrowseInfo { %log; %orig; }
-(void)onTimeLineViewReturn { %log; %orig; }
-(void)handleLongPressEx:(id)ex { %log; %orig; }
-(void)openWriteTextViewController { %log; %orig; }
-(void)OnFinishComment:(BOOL)comment { %log; %orig; }
-(void)resetRightButtonStatus { %log; %orig; }
-(void)reloadTableView { %log; %orig; }
-(void)didDisshow { %log; %orig; }
-(void)setToTopCell { %log; %orig; }
-(void)cacheInputText { %log; %orig; }
-(void)clearWCCache { %log; %orig; }
-(void)reloadDataWrap { %log; %orig; }
-(void)viewDidBePushed:(BOOL)view { %log; %orig; }
-(void)viewDidAppear:(BOOL)view { %log; %orig; }
-(void)showBarButton:(id)button { %log; %orig; }
-(id)init { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)didCommitText:(id)text { %log; %orig; }
-(void)textViewTextDidChange { %log; %orig; }
-(void)updateWordCnt:(int)cnt { %log; %orig; }
-(void)onHideKeyboard { %log; %orig; }
-(void)MMGrowTextViewBeginEditing:(id)editing { %log; %orig; }
-(void)MMGrowTextViewHeightDidChanged:(id)mmgrowTextViewHeight { %log; %orig; }
-(void)keyboardWillHide { %log; %orig; }
-(void)keyboardDidHide { %log; %orig; }
-(void)keyboardWillShow { %log; %orig; }
-(void)updateContentOffset { %log; %orig; }
-(void)reloadExpressionButtonImage:(int)image { %log; %orig; }
-(void)onExpressionButtonClicked:(id)clicked { %log; %orig; }
-(void)ensureInitInputView { %log; %orig; }
-(void)initEmoticonView { %log; %orig; }
-(void)initInputToolView { %log; %orig; }
-(void)previewingContext:(id)context commitViewController:(id)controller { %log; %orig; }
-(id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)onTranslateSnsChangedFromPhotoContent:(id)photoContent { %log; %orig; }
-(void)onViewSightOutFullScreen { %log; %orig; }
-(void)onViewSightInFullScreen { %log; %orig; }
-(void)refreshWholeView { %log; %orig; }
-(void)onWCContentItemViewOutFullScreen { %log; %orig; }
-(void)onWCContentItemViewInFullScreen { %log; %orig; }
-(void)onWCContentItemViewExposeMenu:(id)menu scene:(int)scene { %log; %orig; }
-(void)onWCContentItemViewMoreMenu:(id)menu sender:(id)sender { %log; %orig; }
-(void)animationDidStop:(id)animation finished:(id)finished context:(void*)context { %log; %orig; }
-(void)scrollViewDidEndScrollingAnimation:(id)scrollView { %log; %orig; }
-(void)commitAnimationWillStart:(id)commitAnimation { %log; %orig; }
-(void)animationDidEndRemainView:(id)animation hintDataItem:(id)item { %log; %orig; }
-(void)scrollTableViewToShowDataItem:(id)showDataItem { %log; %orig; }
-(void)showAnimationToImageView { %log; %orig; }
-(void)setAnimatedImageHidden:(BOOL)hidden withTimeLineCellView:(id)timeLineCellView { %log; %orig; }
-(void)setAnimatedImageHidden:(BOOL)hidden { %log; %orig; }
-(void)clearAnimationPropertiesProtection { %log; %orig; }
-(void)clearAnimationProperties { %log; %orig; }
-(void)onNotParticipateBtnClick { %log; %orig; }
-(void)onParticipateBtnClick { %log; %orig; }
-(void)closeParticipateFullScreenView { %log; %orig; }
-(void)tryToshowGoldenCameraTip { %log; %orig; }
-(void)onCloseGoldenCmarmaTip { %log; %orig; }
-(void)onNewYearSnsChangePostStatus:(BOOL)status { %log; %orig; }
-(void)onNewYearSnsChangeBrowseStatus:(BOOL)status bOpen:(BOOL)open scene:(BOOL)scene { %log; %orig; }
-(void)showGoldenCameraTipView { %log; %orig; }
-(void)updateTipViewWithTip:(id)tip { %log; %orig; }
-(void)onResumeScrollToTop { %log; %orig; }
-(void)onForbidScrollToTop { %log; %orig; }
-(void)dismissCurrentViewWithAnimatedV4:(BOOL)animatedV4 { %log; %orig; }
-(void)onSendWCSnsRedEnvelopesCancelV4 { %log; %orig; }
-(void)onSendWCSnsRedEnvelopesSuccessV4 { %log; %orig; }
-(void)postRedEnvelopes:(int)envelopes { %log; %orig; }
%end 



%hook WCLikeButton
- (void)setM_uiSourceType:(unsigned long )m_uiSourceType { %log; %orig; }
- (unsigned long )m_uiSourceType { %log; unsigned long  r = %orig; HBLogDebug(@" = %lu", r); return r; }
- (void)setM_item:(WCDataItem* )m_item { %log; %orig; }
- (WCDataItem* )m_item { %log; WCDataItem*  r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)onLikeFriend { %log; %orig; }
-(void)LikeBtnReduceEnd { %log; %orig; }
-(void)LikeBtnReduce { %log; %orig; }
-(void)LikeBtnEnlarge { %log; %orig; }
-(id)initWithDataItem:(id)dataItem { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)updateLikeBtn { %log; %orig; }
%end