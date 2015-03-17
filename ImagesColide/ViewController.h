//
//  ViewController.h
//  ImagesColide
//
//  Created by Francisco Surroca on 12/11/13.
//  Copyright (c) 2013 Francisco Surroca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIImageView *img1;
    IBOutlet UIImageView *img2;
    
}

@property (nonatomic, retain) UIImageView *img1;
@property (nonatomic, retain) UIImageView *img2;

-(void)collision;

@end
