//
//  ViewController.h
//  iCalc
//
//  Created by Philip Cesar B. Garay on 2/26/13.
//  Copyright (c) 2013 Philip Cesar B. Garay. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{ Plus,Minus,Multiply,Divide} CalcOperation;

@interface ViewController : UIViewController{
    IBOutlet UITextField *display;
    IBOutlet UIButton *cbutton;
    NSString *storage;
    CalcOperation operation;
}
@property (strong, nonatomic) IBOutlet UIButton *button0;
@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UIButton *button3;
@property (strong, nonatomic) IBOutlet UIButton *button4;
@property (strong, nonatomic) IBOutlet UIButton *button5;
@property (strong, nonatomic) IBOutlet UIButton *button6;
@property (strong, nonatomic) IBOutlet UIButton *button7;
@property (strong, nonatomic) IBOutlet UIButton *button8;
@property (strong, nonatomic) IBOutlet UIButton *button9;


- (IBAction)button0Tap:(UIButton *)sender;
- (IBAction)button1Tap:(UIButton *)sender;
- (IBAction)button2Tap:(UIButton *)sender;
- (IBAction)button3Tap:(UIButton *)sender;
- (IBAction)button4Tap:(UIButton *)sender;
- (IBAction)button5Tap:(UIButton *)sender;
- (IBAction)button6Tap:(UIButton *)sender;
- (IBAction)button7Tap:(UIButton *)sender;
- (IBAction)button8Tap:(UIButton *)sender;
- (IBAction)button9Tap:(UIButton *)sender;


- (IBAction)equalsbutton:(UIButton *)sender;
- (IBAction)plusbutton:(UIButton *)sender;
- (IBAction)minusbutton:(UIButton *)sender;
- (IBAction)multiplybutton:(UIButton *)sender;
- (IBAction)dividebutton:(UIButton *)sender;

- (IBAction)clearDisplay:(UIButton *)sender;

- (IBAction)decimalbutton:(UIButton *)sender;


@end
