//
//  RBHypnosisViewController.h
//  RBHypnoTime
//


#import <Foundation/Foundation.h>
#import "RBHypnosisView.h"

@interface RBHypnosisViewController : UIViewController 
{
     // implemented this as part of solution to Silver challenge of Chapter 7
    IBOutlet UISegmentedControl *sC;
	RBHypnosisView *viewToChangeColor;
}

 // implemented this as part of solution to Silver challenge of Chapter 7
-(IBAction)changeColor;

@end
