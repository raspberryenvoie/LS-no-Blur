#include "LBPRootListController.h"

@implementation LBPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

// Respring method
- (void)respring {
  [HBRespringController respring];
}

// Open GiHub method
- (void)GitHub {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/raspberryenvoie/LS-no-Blur"]];
}

@end
