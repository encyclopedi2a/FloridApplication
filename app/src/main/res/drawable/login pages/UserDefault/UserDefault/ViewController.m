//
//  ViewController.m
//  UserDefault
//
//  Created by Anish Sthapit on 3/21/15.
//  Copyright (c) 2015 anishrsthapit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
    self.username.text=[userDefaults objectForKey:@"username"];
    self.password.text=[userDefaults objectForKey:@"password"];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{


    if(textField == self.username){
        [textField resignFirstResponder];
        [self.password becomeFirstResponder];
    
    }else if(textField == self.password){
    
        [self save:nil];
        [textField resignFirstResponder];
    }


    return YES;

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    [self.username resignFirstResponder];
    [self.password resignFirstResponder];

}



- (IBAction)save:(id)sender {
    
//    if ([self.saveButtonText.titleLabel.text isEqualToString:@"Next"]){
//        [self.saveButtonText setTitle:@"Save" forState:UIControlStateNormal];
//        
//        return;
//    }else{
//    
//        [self.saveButtonText setTitle:@"Next" forState:UIControlStateNormal];
//        
//    
//    
//    }
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Data Saved" message:@"Username and Password Saved" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    
    [userDefault setObject:self.username.text forKey:@"username"];
    [userDefault setObject:self.password.text forKey:@"password"];
    [userDefault synchronize];
    [alert show];
    
}
- (IBAction)gotogooglepage:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.google.com"]];
}
@end
