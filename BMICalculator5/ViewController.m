//
//  ViewController.m
//  BMICalculator5
//
//  Created by Olivia Miller on 6/29/16.
//  Copyright © 2016 Olivia Miller. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)switchPressed:(id)sender {
    if (self.sexSwitch.on){
        self.maleFemale.text = @"Female";
    }
    else {
        self.maleFemale.text = @"Male";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(float)calcBMI:(float)weight height:(float)theHeight

{
    float result = weight / (theHeight * theHeight);
    return result;
}

- (IBAction)calculateAction:(id)sender {
    if (self.height == 0) return;
    float h = [self.height.text floatValue]/ 100.0;
    float w = [self.weight.text floatValue];
    float bmr;
    float bmi = [self calcBMI:w height:h];
    NSLog(@"the bmi calculation is %g", bmi);
    self.result.text = [NSString stringWithFormat:@"%.2f", bmi];
    NSLog(@"the string bmi is %@", self.result.text);
    
    if ([self.maleFemale.text isEqualToString: @"Female"]){
        bmr = 10 * self.weight.text.floatValue + 6.25 * self.height.text.floatValue - 5 * self.ageLabel.text.floatValue - 161;
    }
    else{
        bmr = 10*self.weight.text.floatValue+6.25*self.height.text.floatValue-5*self.ageLabel.text.floatValue+5;
    }
    
    self.result2.text =  [NSString stringWithFormat:@"%.2f",bmr];
    
    
    //[self.view endEditing:YES];
    
    UIImage* newImage;
    NSString* path;
    
    
    NSBundle *myBundle = [NSBundle mainBundle];
       if (bmi>=30){

        path = [myBundle pathForResource: @"Crumbs-Bake-Shop-Cupcake-Display" ofType:@"jpg"];
       }
    
        else if (bmi>=25){
               
        path = [myBundle pathForResource: @"3985484550_ecd6876ca0_b" ofType:@"jpg"];
        }
    
        else if (bmi>=18.5){
                   
        path = [myBundle pathForResource: @"steak-1057881_960_720" ofType:@"jpg"];
        }
    
        else{
                    
        path = [myBundle pathForResource: @"8757757198_067b156ca3_z" ofType:@"jpg"];
           
        }
    NSLog(@"path: %@", path);
    
    newImage = [UIImage imageWithContentsOfFile: path];
    self.imageView.image = newImage;
}



@end
