//
//  ViewController.m
//  CalculatorTwist
//
//  Created by Dipankar Ghosh on 5/24/18.
//  Copyright © 2018 Dipankar Ghosh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];

    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
    //Set to primary NULL values, refreshing.
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clearPressed:(id)sender {
    NSLog(@"Entered Clear");
    operatorPressed = FALSE;
    _labelOutput.text = NULL;
    firstEntry = NULL;
    secondEntry = NULL;
}

- (IBAction)addPressed:(id)sender {
    NSLog(@"Adding");
    operatorPressed = TRUE;
    flag = 0;
//labelOutput.text
}

- (IBAction)minusPressed:(id)sender {
    NSLog(@"doing Minus");
    operatorPressed = TRUE;
    flag = 1;
}

- (IBAction)divisionPressed:(id)sender {
    NSLog(@"doing Division");
    operatorPressed = TRUE;
    flag = 3;
}
- (IBAction)multiplicationPressed:(id)sender {
    NSLog(@"doing Multiplication");
    mult = TRUE;
    flag = 2;
    operatorPressed = TRUE;
}


- (IBAction)equalsPressed:(id)sender {
    NSLog(@"results Equals");
    int outputNum;
    switch (flag) {
            case 0:
            outputNum = [firstEntry intValue] + [secondEntry intValue];
            _labelOutput.text = [NSString stringWithFormat:@"%i", outputNum];
            break;
            case 1:
            outputNum = [firstEntry intValue] - [secondEntry intValue];
            _labelOutput.text = [NSString stringWithFormat:@"%i", outputNum];
            break;
            case 2:
            outputNum = [firstEntry intValue] * [secondEntry intValue];
            _labelOutput.text = [NSString stringWithFormat:@"%i", outputNum];
            break;
            case 3:
            outputNum = [firstEntry intValue] / [secondEntry intValue];
            _labelOutput.text = [NSString stringWithFormat:@"%i", outputNum];
            break;
        default:
            break;
    }
    operatorPressed = FALSE; // back to original equation
    firstEntry = NULL;
    secondEntry = NULL;
    
    
}

- (IBAction)pressed:(id)sender {
}
- (IBAction)numberPressed:(UIButton *)sender {
    long int tag =sender.tag;
    
    if(operatorPressed == FALSE){
    
        if(firstEntry == NULL){
            firstEntry = [NSString stringWithFormat:@"%ld", tag];
        //firstEntry = [NSString stringWithFormat:@"%i", tag];
        _labelOutput.text = firstEntry;
        }else{
            firstEntry = [NSString stringWithFormat:@"%@%ld", firstEntry,tag];
        _labelOutput.text = firstEntry;
        }
    }
        else {
        if(secondEntry == NULL)
        {
            secondEntry = [NSString stringWithFormat:@"%ld", tag];
            _labelOutput.text = secondEntry;
        }else{
            secondEntry = [NSString stringWithFormat:@"%@%ld", secondEntry, tag];
            _labelOutput.text = secondEntry;
        }
    }
}

@end
