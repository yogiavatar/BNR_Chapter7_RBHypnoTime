//
//  RBTimeViewController.m
//  RBHypnoTime
//


#import "RBTimeViewController.h"

@implementation RBTimeViewController

-(IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    [timeLabel setText:[formatter stringFromDate:now]];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    
    //Call the superclass's designated initializer
    
    //self = [super initWithNibName:nil bundle:nil];
    
    //  abovenil for both automatically points to a nib of same name as the current class name, and to the bundle of the app
    
    //the following is same as above except we are specifying the nib name and pointing to an instance of the app bundle
    //get a pointer to the application bundle object
    NSBundle *appBundle = [NSBundle mainBundle];
    self = [super initWithNibName:@"RBTimeViewController" bundle:appBundle];
    
    
    if (self) {
        //Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        //Give it a label
        [tbi setTitle:@"Time"];
    }
    
    
    
    return self;
}

-(void)viewDidLoad
{
    //Always call the super implementation of viewDidLoad
    [super viewDidLoad];
    NSLog(@"RBTimeViewController loaded its view");
    [[self view] setBackgroundColor:[UIColor greenColor]];
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController will appear");
    [super viewWillAppear:animated];
    [self showCurrentTime:nil];
}

-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController will DISappear");
    [super viewWillDisappear:animated];
}

@end
