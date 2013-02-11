//
//  RBHypnosisViewController.m
//  RBHypnoTime
//


#import "RBHypnosisViewController.h"
#import "RBHypnosisView.h"

@implementation RBHypnosisViewController

/*-(void)loadView
{
    //Create a View
    CGRect frame = [[UIScreen mainScreen] bounds];
    v = [[RBHypnosisView alloc] initWithFrame:frame];
    
    //Set it as *the* view of this view controller
    [self setView:v];
    
    
    
}*/

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //Call the superclass's designated initializer
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        //Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        //Give it a label
        [tbi setTitle:@"Hypnosis"];
        
    }
    return self;
    
}

-(void)viewDidLoad
{
    //Always call the super implementation of viewDidLoad
    [super viewDidLoad];
    NSLog(@"RBHypnosisViewController loaded its view");
    // implemented this as part of solution to Silver challenge of Chapter 7
    // introduce the view instance inside viewDidLoad so it loads only once
    viewToChangeColor = [[RBHypnosisView alloc] init];
    // here it is important to type cast the [self view] because it is a UIView*, and viewToChangeColor is of type RBHypnosisView*;  without typecasting it gives a warning
    viewToChangeColor = (RBHypnosisView*)[self view];
}

//implemented as part of solution to silver challenge of chapter 7
-(IBAction)changeColor
{
	
	//rbv = [self view];
		
		if (sC.selectedSegmentIndex == 0)
		{
			//invoke red circles
			[viewToChangeColor updateCircleColor:[UIColor redColor]];
		}
		else if (sC.selectedSegmentIndex == 1)
		{
			//invoke green circles
			[viewToChangeColor updateCircleColor:[UIColor greenColor]];
		}
		else if (sC.selectedSegmentIndex == 2)
		{
			//invoke blue circles
			[viewToChangeColor updateCircleColor:[UIColor blueColor]];
		}

}


@end
