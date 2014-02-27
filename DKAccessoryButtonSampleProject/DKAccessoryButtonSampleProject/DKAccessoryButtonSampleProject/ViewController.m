//
//  ViewController.m
//  DKAccessoryButtonSampleProject
//
//  Created by Dennis Kutlubaev on 27.02.14.

#import "ViewController.h"
#import "DKAccessoryButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.view.backgroundColor = [UIColor blackColor];
    
    CGRect buttonFrame = CGRectMake(10, 10, 130, 44);
    DKAccessoryButton *button = [[DKAccessoryButton alloc] initWithFrame:buttonFrame title:@"My button"];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.center = CGPointMake(self.view.frame.size.width / 2.0, self.view.frame.size.height / 2.0);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonClicked:(id)sender
{
    DKAccessoryButton *button = (DKAccessoryButton *)sender;
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:button.titleLabel.text message:@"is clicked" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alertView show];
}

@end
