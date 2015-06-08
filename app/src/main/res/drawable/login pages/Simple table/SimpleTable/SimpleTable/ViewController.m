//
//  ViewController.m
//  SimpleTable
//
//  Created by Anish Sthapit on 3/18/15.
//  Copyright (c) 2015 anishrsthapit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *name;
}
- (void)viewDidLoad
{
    [super viewDidLoad];\
    name=[NSArray arrayWithObjects:@"Amogha",@"Sujan",@"Suzit",@"Jayesh",@"Sangeet",@"Nikesh",@"Pratyush", nil];
	// Do any additional setup a    fter loading the view, typically from a nib.
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [name count];

}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    UITableViewCell * cell=[tableView dequeueReusableHeaderFooterViewWithIdentifier:@"simpletablecell"];
    
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"simpletablecell"];
    }
    
    cell.textLabel.text=[name objectAtIndex:indexPath.row];
    return cell;
    
}
- (void) tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *personName=[name objectAtIndex:indexPath.row];
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Your name is" message:personName delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}
@end
