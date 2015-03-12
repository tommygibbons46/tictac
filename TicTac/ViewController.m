//
//  ViewController.m
//  TicTac
//
//  Created by Tommy Gibbons on 3/12/15.
//  Copyright (c) 2015 Tommy Gibbons. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *one;
@property (weak, nonatomic) IBOutlet UILabel *two;
@property (weak, nonatomic) IBOutlet UILabel *three;
@property (weak, nonatomic) IBOutlet UILabel *four;
@property (weak, nonatomic) IBOutlet UILabel *five;
@property (weak, nonatomic) IBOutlet UILabel *six;
@property (weak, nonatomic) IBOutlet UILabel *seven;
@property (weak, nonatomic) IBOutlet UILabel *eight;
@property (weak, nonatomic) IBOutlet UILabel *nine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property CGPoint orignalPlayerLabelCenter;
@property NSArray *labels;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.orignalPlayerLabelCenter  = self.whichPlayerLabel.center;
    self.whichPlayerLabel.text = (@"X");
    self.whichPlayerLabel.textColor = [UIColor blueColor];
    self.labels = [NSArray arrayWithObjects:self.one, self.two, self.three, self.four, self.five, self.six, self.seven, self.eight, self.nine, nil];
}


-(IBAction)onLabelTapped:(UITapGestureRecognizer *)sender //on touch on screen
{
    CGPoint point = [sender locationInView:self.view];
    //UILabel *someLabel = [self findLabelUsingPoint:point];
    self.whichPlayerLabel.center = point;
    if([self.whichPlayerLabel.text isEqual:@"X"])
    {
        self.whichPlayerLabel.text = (@"O");
    }else
    {
        self.whichPlayerLabel.text = (@"X");
    }

    for(UILabel *someLabel in self.labels){
        if (CGRectContainsPoint(someLabel.frame, point)) {
            someLabel.text = self.whichPlayerLabel.text;

    }
        if ([someLabel isEqual:@"X"]) {
            someLabel.textColor = [UIColor blueColor];
        }else{
            someLabel.textColor = [UIColor redColor];
        }
    }

/// ^^ cleaner way of writing the for statement below

//    for (int i=0; i<self.labels.count; i++) {
//        UILabel *someLabel = self.labels[i];
//        if (CGRectContainsPoint(someLabel.frame, point)) {
//           someLabel.text = self.whichPlayerLabel.text;
//    }

}


//-(void)findLabelUsingPoint:(CGPoint) point
//{
//    CGPoint point = [tapGestu
//                     sender locationInView:self.view];
//    if ([self.whichPlayerLabel.text isEqual:@"X"]) {
//        <#statements#>
//    }
//
//}




@end
