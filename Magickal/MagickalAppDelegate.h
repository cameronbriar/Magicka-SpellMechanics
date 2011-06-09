//
//  MagickalAppDelegate.h
//  Magickal
//
//  Created by Cameron Briar on 6/6/11.
//  Copyright 2011 CSU Fresno. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MagickalViewController;

@interface MagickalAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MagickalViewController *viewController;

@end
