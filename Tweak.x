#import <Cephei/HBPreferences.h>

@interface SBCoverSheetBlurView : UIView // LS Blur
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

BOOL enabled; // Declare "enabled" variable

%hook SBCoverSheetBlurView // Hook SBCoverSheetBlurView
- (void)didMoveToWindow {
    if(enabled) { // If the Enabled switch in the preferences is on
      self.hidden = YES; // Hide the blur
    }
    %orig; // Run the original code
}
%end

%ctor {

  HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"com.raspberryenvoie.lsnoblurprefs"];
  [preferences registerBool:&enabled default:YES forKey:@"enabled"]; // Extract "enabled" variable from the preferences

}
