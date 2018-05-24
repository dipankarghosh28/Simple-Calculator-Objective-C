//
//  ViewController.h
//  CalculatorTwist
//
//  Created by Dipankar Ghosh on 5/24/18.
//  Copyright © 2018 Dipankar Ghosh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    bool operatorPressed;
    bool add;
    bool mult;
    int flag;
    char op; // operator;
    NSString *firstEntry;
    NSString *secondEntry;
    
    
}

@property (weak, nonatomic) IBOutlet UILabel *labelOutput;
- (IBAction)clearPressed:(id)sender;
- (IBAction)addPressed:(id)sender;
- (IBAction)minusPressed:(id)sender;
-(IBAction)equalsPressed:(id)sender;
- (IBAction)multiplicationPressed:(id)sender;
- (IBAction)numberPressed:(UIButton *)sender;
-( IBAction)pressed:(id)sender;

@end

