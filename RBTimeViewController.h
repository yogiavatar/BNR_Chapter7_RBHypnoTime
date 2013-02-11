//
//  RBTimeViewController.h
//  RBHypnoTime
//


#import <Foundation/Foundation.h>

@interface RBTimeViewController : UIViewController
{
    __weak IBOutlet UILabel *timeLabel;
}
-(IBAction)showCurrentTime:(id)sender;

@end
