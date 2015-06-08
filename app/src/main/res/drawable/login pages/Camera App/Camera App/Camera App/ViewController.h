//
//  ViewController.h
//  Camera App
//
//  Created by Anish Sthapit on 3/15/15.
//  Copyright (c) 2015 anishrsthapit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate, UIActionSheetDelegate,UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *labelText;
@property (weak, nonatomic) IBOutlet UISegmentedControl *product;
- (IBAction)productdetail:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicatorr;

@property (nonatomic, strong) UISwitch *mySwitch;
@end
