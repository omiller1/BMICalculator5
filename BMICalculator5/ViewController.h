//
//  ViewController.h
//  BMICalculator5
//
//  Created by Olivia Miller on 6/29/16.
//  Copyright © 2016 Olivia Miller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *weight;
@property (weak, nonatomic) IBOutlet UITextField *height;
@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *maleFemale;
@property (weak, nonatomic) IBOutlet UISwitch *sexSwitch;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UILabel *result2;

- (IBAction)calculateAction:(id)sender;
-(float)calcBMI:(float)weight height:(float)theHeight;






@end

