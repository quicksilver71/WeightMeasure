//
//  ConfigWeightMeasure.m
//  WeightMeasure
//
//  Created by MASSIMILIANO DI DOMENICO on 24/01/14.
//  Copyright (c) 2014 MASSIMILIANO DI DOMENICO. All rights reserved.
//

#import "ConfigWeightMeasure.h"

@interface ConfigWeightMeasure ()
{
    UIGestureRecognizer *tapper;
    UITextField *refTextField;
}

@end

@implementation ConfigWeightMeasure

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [textField setText:@""];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UIView * txt in self.view.subviews)
    {
        if ([txt isKindOfClass:[UITextField class]] && [txt isFirstResponder])
        {
            [txt resignFirstResponder];
        }
    }
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    [textField resignFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //tapper = [[UIGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTap:)];
    //[tapper setCancelsTouchesInView:NO];
    //[self.view addGestureRecognizer:tapper];
    self.nomeTxt.delegate=self;
    self.cognomeTxt.delegate=self;
    self.pesoAttualeTxt.delegate=self;
    self.pesoTargetTxt.delegate=self;
    self.panciaSwtch.on=NO;
    self.gambeSwtch.on=NO;
    self.dietaSwtch.on=NO;
    self.continua.enabled=NO;
    self.count = 0;
}
/*-(void)handleSingleTap:(UIGestureRecognizer *)sender
{
    [refTextField resignFirstResponder];
}*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)controllo:(UITextField *)sender {
    if (![sender.text isEqualToString:@""]) {
        self.count++;
    }
    
    NSLog(@"count vale: %i",self.count);
}
@end
