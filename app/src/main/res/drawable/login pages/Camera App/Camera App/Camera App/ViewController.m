//
//  ViewController.m
//  Camera App
//
//  Created by Anish Sthapit on 3/15/15.
//  Copyright (c) 2015 anishrsthapit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIImagePickerController *imagepicker;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.imagepicker=[[UIImagePickerController alloc]init];
    self.imagepicker.delegate=self;
    self.imagepicker.allowsEditing=NO;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)cameraaccess:(id)sender {
    if(![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
    
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Camera Unavailable" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        [self libraryaccess:nil];
        return;
    }
    self.imagepicker.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:self.imagepicker animated:YES completion:nil];
    
}

- (IBAction)libraryaccess:(id)sender {
    
    self.imagepicker.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:self.imagepicker animated:YES completion:nil];
    
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *choosenimage=info[UIImagePickerControllerOriginalImage];
   // self.userimage.image=choosenimage;
    UIImageWriteToSavedPhotosAlbum(choosenimage, self, nil, nil);
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissViewControllerAnimated:YES completion:nil];

    
}

- (IBAction)productdetail:(id)sender {
    
   
    if(self.product.selectedSegmentIndex==0){
    
        [self.indicatorr
          startAnimating];
        self.labelText.text=@"I am Product";
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    [self.indicatorr stopAnimating];
});
    
    
    }else if (self.product.selectedSegmentIndex==1){
        [self.indicatorr startAnimating];
         self.labelText.text=@"I am About";
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self.indicatorr stopAnimating];
        });
        

    }
    else if (self.product.selectedSegmentIndex==2){
        [self.indicatorr startAnimating];
         self.labelText.text=@"I am Info";
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self.indicatorr stopAnimating];
        });
        

        
    }
    else if (self.product.selectedSegmentIndex==3){
        [self.indicatorr startAnimating];
         self.labelText.text=@"I am Location";
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self.indicatorr stopAnimating];
        });
        

    }
    
}

@end
