//
//  ViewController.h
//  UserDefault
//
//  Created by Anish Sthapit on 3/21/15.
//  Copyright (c) 2015 anishrsthapit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)save:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *saveButtonText;
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)gotogooglepage:(id)sender;

@end
