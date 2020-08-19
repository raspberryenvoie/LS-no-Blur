@interface SBCoverSheetBlurView : UIView // LS Blur
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

%hook SBCoverSheetBlurView // Hook SBCoverSheetBlurView
- (void)didMoveToWindow {
    %orig;
    self.hidden = YES; // Hide the blur
}
%end
