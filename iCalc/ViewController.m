//
//  ViewController.m
//  iCalc
//
//  Created by Philip Cesar B. Garay on 2/26/13.
//  Copyright (c) 2013 Philip Cesar B. Garay. All rights reserved.
//
//
//  Credit to http://deepakkeswani.com/2012/02/writing-calculator-for-iphone-ios-in-xcode/
//


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction) clearDisplay {
    display.text = @"";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button0Tap:(UIButton *)sender {
     display.text=[NSString stringWithFormat:@"%@0",display.text];
}

- (IBAction)button1Tap:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@1",display.text];
}

- (IBAction)button2Tap:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@2",display.text];
}

- (IBAction)button3Tap:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@3",display.text];
}

- (IBAction)button4Tap:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@4",display.text];
}

- (IBAction)button5Tap:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@5",display.text];
}

- (IBAction)button6Tap:(UIButton *)sender {
     display.text=[NSString stringWithFormat:@"%@6",display.text];
}

- (IBAction)button7Tap:(UIButton *)sender {
     display.text=[NSString stringWithFormat:@"%@7",display.text];
}

- (IBAction)button8Tap:(UIButton *)sender {
     display.text=[NSString stringWithFormat:@"%@8",display.text];
}

- (IBAction)button9Tap:(UIButton *)sender {
     display.text=[NSString stringWithFormat:@"%@9",display.text];
}

- (IBAction)equalsbutton:(UIButton *)sender {
    NSString *val = display.text;
    switch(operation) {
        case Plus :
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[storage longLongValue]];
            break;
        case Minus:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]-[val longLongValue]];
            break;
        case Divide:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]/[val longLongValue]];
            break;
        case Multiply:
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[storage longLongValue]];
            break;
    }
}

- (IBAction)plusbutton:(UIButton *)sender {
    operation = Plus;
    storage = display.text;
    display.text=@"";
}

- (IBAction)minusbutton:(UIButton *)sender {
    operation = Minus;
    storage = display.text;
    display.text=@"";
}

- (IBAction)multiplybutton:(UIButton *)sender {
    operation = Multiply;
    storage = display.text;
    display.text=@"";
}

- (IBAction)dividebutton:(UIButton *)sender {
    operation = Divide;
    storage = display.text;
    display.text=@"";
}

- (IBAction)clearDisplay:(UIButton *)sender {
    display.text = @"";
}

- (IBAction)decimalbutton:(UIButton *)sender {
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
