//
//  ConfigWeightMeasure.h
//  WeightMeasure
//
//  Created by MASSIMILIANO DI DOMENICO on 24/01/14.
//  Copyright (c) 2014 MASSIMILIANO DI DOMENICO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConfigWeightMeasure : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *nomeTxt;
@property (strong, nonatomic) IBOutlet UITextField *cognomeTxt;
@property (strong, nonatomic) IBOutlet UITextField *pesoAttualeTxt;
@property (strong, nonatomic) IBOutlet UITextField *pesoTargetTxt;
@property (strong, nonatomic) IBOutlet UISegmentedControl *kgLbSegment;
@property (strong, nonatomic) IBOutlet UISwitch *panciaSwtch;
@property (strong, nonatomic) IBOutlet UISwitch *gambeSwtch;
@property (strong, nonatomic) IBOutlet UISwitch *dietaSwtch;
@property (strong, nonatomic) IBOutlet UIButton *continua;
- (IBAction)controllo:(UITextField *)sender;

@property (nonatomic)NSInteger count;
@end
