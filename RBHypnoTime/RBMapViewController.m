//
//  RBMapViewController.m
//  RBHypnoTime
//


#import "RBMapViewController.h"

@implementation RBMapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // Custom initialization
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Map View"];
    }
    return self;
}

@end
