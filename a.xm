%hook WCLikeButton
- (void)setM_uiSourceType:(unsigned long )m_uiSourceType { %log; %orig; }
- (unsigned long )m_uiSourceType { %log; unsigned long  r = %orig; HBLogDebug(@" = %lu", r); return r; }
- (void)setM_item:(WCDataItem* )m_item { %log; %orig; }
- (WCDataItem* )m_item { %log; WCDataItem*  r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void).cxx_destruct { %log; %orig; }
-(void)onLikeFriend { %log; %orig; }
-(void)LikeBtnReduceEnd { %log; %orig; }
-(void)LikeBtnReduce { %log; %orig; }
-(void)LikeBtnEnlarge { %log; %orig; }
-(id)initWithDataItem:(id)dataItem { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
-(void)updateLikeBtn { %log; %orig; }
%end
