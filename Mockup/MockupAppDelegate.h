//
//  MockupAppDelegate.h
//  Mockup
//
//  Created by Cameron Briar on 5/31/11.
//  Copyright 2011 CSU Fresno. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MockupViewController;

@interface MockupAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MockupViewController *viewController;

@end
