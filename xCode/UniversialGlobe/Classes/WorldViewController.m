//  Copyright 2009 Clever Coding LLC. All rights reserved.
//  
//  The WorldViewController class and XIB is just for convience for the Globe Demo.
//  When implementing the 3D Globe you can reuse this class and XIB or just add a
//  view with the class set as EAGLView on to an XIB of your chosing 
//

#import "WorldViewController.h"

@implementation UINavigationBar (CustomImage)
- (void)drawRect:(CGRect)rect {
	UIImage *image = [UIImage imageNamed: @"navigationBar.png"];
	[image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
}
@end


@implementation WorldViewController

- (void)viewDidAppear:(BOOL)animated{
	NSLog(@"got here vda");
	//[activityIndicator stopAnimating];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
	// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil  myLovelyData:(id)data
{
    if ((self = [super initWithNibName:@"World-iPad" bundle:nibBundleOrNil])) 
    {
        // Custom initialization using myLovelyData
        //
    }
    return self;
}


- (void)viewDidDisappear:(BOOL)animated{
	//NSLog(@"got here vdd");
}

- (void)viewWillAppear:(BOOL)animated{
    self.title = @"";
	NSLog(@"got here vwa");
	countriesSegment.tintColor = [UIColor darkGrayColor];
	glowSegment.tintColor = [UIColor darkGrayColor];
	rotateSegment.tintColor = [UIColor darkGrayColor];
	//self.navigationController.navigationBarHidden = YES;
	NSLog(@"end vwa");
	
	[theGlobe initGlobeSizeByOrientation:self.interfaceOrientation];
	[theGlobe startAnimation];
    

	
}	

- (void)viewWillDisappear:(BOOL)animated{
	NSLog(@"got here vwd");
	[theGlobe stopAnimation];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	NSLog(@"BEGIN: shouldAutorotateToInterfaceOrientation");

		
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
		return YES;
	else {
		//it is an iPhone so don't auto rotate
		return NO;
	}

	
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
	NSLog(@"BEGIN: didRotateFromInterfaceOrientation");
	[theGlobe stopAnimation];
	[theGlobe initGlobeSizeByOrientation:self.interfaceOrientation];
	[theGlobe startAnimation];
}


@end
