//
//  ViewController.m
//  TouchEvent
//
//  Created by APPLE on 08/04/14.
//  Copyright (c) 2014 Ndot. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

static CGFloat color=1;

- (void)viewDidLoad
{
    
    [self.view setMultipleTouchEnabled:YES];
   
    UISwipeGestureRecognizer *swipeGesture=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft:)];
    
    [swipeGesture setDirection:UISwipeGestureRecognizerDirectionDown];
    
    [swipeGesture setNumberOfTouchesRequired:3];
   
    [self.view addGestureRecognizer:swipeGesture];
    
  
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)swipeLeft:(UISwipeGestureRecognizer *)gestire
{    
    NSLog(@"Gesture Worked Well");
    
    //http://maps.apple.com
    
    NSURL *url=[NSURL URLWithString:@"http://maps.apple.com"];
    
    [[UIApplication sharedApplication] openURL:url];
    
    
}



/*

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"%d",[[event allTouches] count]);
    
    location=[[touches anyObject] locationInView:self.view];
       
    y=location.y;
    
}
 

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Moved");
    
    CGPoint point1=[[touches anyObject] locationInView:self.view];
    
    
    if (point1.y<y)
    {
        if (color<1.1) {
            color=color+0.0001;
        }
        
    }
    else{
        
        if (color>0.0) {
            color=color-0.00001;
        }
    }
    
    
    [self.view setBackgroundColor:[UIColor colorWithWhite:color alpha:color]];
    
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
   // NSLog(@"")
    
}

 */


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
