//
//  ViewController.m
//  ImagesColide
//
//  Created by Francisco Surroca on 12/11/13.
//  Copyright (c) 2013 Francisco Surroca. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize img1;
@synthesize img2;

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    img1.center = [touch locationInView:self.view];
    
    [self collision];
}

-(void)collision
{
    if (CGRectIntersectsRect(img1.frame, img2.frame))
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Collision occured" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Fuck Yeah", @"Oh No!", @"I'm hit :-(", nil];
        [alert show];
    }
}

- (void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 1:
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.yahoo.com"]];
            break;
        case 2:
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com"]];
            break;
        case 3:
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.bing.com"]];
            break;
            
        default:
            break;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
