//
//  globeAppDelegate.m
//  globe
//
//  Copyright 2009 Clever Coding LLC. All rights reserved.
//

#import "globeAppDelegate.h"
#import "WorldViewController.h"
#import "SecondViewController.h"
#import "GTabBar.h"

@interface UITabBarController (private)
- (UITabBar *)tabBar;
@end

@implementation globeAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize worldViewController;
@synthesize secondViewController;
@synthesize tabBarController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {

    
    NSMutableArray *listOfViewControllers = [[[NSMutableArray alloc]init]autorelease];
	
    tabBarController = [[UITabBarController alloc] init];
	
    CGRect frame = CGRectMake(0, 0, 1024, 49);
    UIView *view = [[UIView alloc] initWithFrame:frame];
    UIImage *tabBarBackgroundImage = [UIImage imageNamed:@"TBBackground.png"];
    UIColor *color = [[UIColor alloc] initWithPatternImage:tabBarBackgroundImage];
    
    [view setBackgroundColor:color];
    [color release];
    [[tabBarController tabBar]insertSubview:view atIndex:0];
    [view release];

    GTabTabItem *tabItem1 = [[GTabTabItem alloc] initWithFrame:CGRectMake(0, 0, 64, 49) normalState:@"tabIcon.png" toggledState:@"tabIconSelected.png"];
	GTabTabItem *tabItem2 = [[GTabTabItem alloc] initWithFrame:CGRectMake(64, 0, 64, 49) normalState:@"tabIcon.png" toggledState:@"tabIconSelected.png"];
	GTabTabItem *tabItem3 = [[GTabTabItem alloc] initWithFrame:CGRectMake(128, 0, 64, 49) normalState:@"tabIcon.png" toggledState:@"tabIconSelected.png"];
	GTabTabItem *tabItem4 = [[GTabTabItem alloc] initWithFrame:CGRectMake(192, 0, 64, 49) normalState:@"tabIcon.png" toggledState:@"tabIconSelected.png"];
    
    
	NSMutableArray *tabItemsArray = [[NSMutableArray alloc] init];
	[tabItemsArray addObject:tabItem1];
	[tabItemsArray addObject:tabItem2];
	[tabItemsArray addObject:tabItem3];
	[tabItemsArray addObject:tabItem4];
    
    
//	WorldViewController *rootViewController2 = [[[WorldViewController alloc] init] autorelease];
    WorldViewController *rootViewController2 = [[WorldViewController alloc] initWithNibName:@"World-iPad" bundle:nil];
    
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"World-iPad" bundle:nil];
    
	worldViewController = [[UINavigationController alloc] initWithRootViewController:rootViewController2];
	worldViewController.title = @"Global Touch Points";
    worldViewController.tabBarItem.image = [UIImage imageNamed:@"tabIcon.png"];

	[listOfViewControllers addObject:worldViewController];
    
    secondViewController = [[UINavigationController alloc] initWithRootViewController:secondView];
	secondViewController.title = @"Presentation";
	[listOfViewControllers addObject:secondViewController];
    
    secondViewController = [[UINavigationController alloc] initWithRootViewController:secondView];
	secondViewController.title = @"Feedback Poll";
	[listOfViewControllers addObject:secondViewController];
    
    secondViewController = [[UINavigationController alloc] initWithRootViewController:secondView];
	secondViewController.title = @"Custom ";
	[listOfViewControllers addObject:secondViewController]; 
    
    
    
	[self.tabBarController setViewControllers:listOfViewControllers
                                     animated:YES];
    
	//
   // [window addSubview:tabBarController.view];
                             
   // tabBarController = [[GTabBar alloc] initWithTabViewControllers:listOfViewControllers tabItems:tabItemsArray initialTab:0];
     [window addSubview:tabBarController.view];
                             
    [rootViewController2 release];

	//[window addSubview:[navigationController view]];
}



- (void)dealloc {
	[window release];
	[super dealloc];
}

@end
