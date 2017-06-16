//
//  ViewController.m
//  取色器
//
//  Created by ydz on 2017/6/7.
//  Copyright © 2017年 lgq. All rights reserved.
//

#import "ViewController.h"
#import "YSImageView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet YSImageView *myIM;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    [self.myIM addGestureRecognizer:tap];
    
    
    
}

- (void)tap:(UITapGestureRecognizer *)tap {
    
    NSLog(@"%f %f",[tap locationInView:self.myIM].x,[tap locationInView:self.myIM].y);
    NSLog(@"%f %f",[tap locationInView:self.myView].x,[tap locationInView:self.myView].y);
    
    self.myView.backgroundColor = [self.myIM getPixelColorAtLocation:[tap locationInView:self.myIM]];

}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
