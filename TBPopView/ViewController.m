//
//  ViewController.m
//  TBPopView
//
//  Created by 思来氏 on 16/9/12.
//  Copyright © 2016年 ThornDemo. All rights reserved.
//

#import "ViewController.h"
#import "TBPopoverView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showPopAction:(UIButton*)sender {
    NSArray *titles = @[@"未评", @"初级", @"中级",@"高级"];
    NSArray *images = @[@"1", @"2", @"3",@"4"];
    TBPopoverView *pop = [[TBPopoverView alloc] initWithTouchView:sender popWidth:200];
    [pop setTitleArray:titles];
    [pop setImageArray:images];
    [pop setArrowPosition:ArrowPositionInRight];
    [pop setFontSize:18.0f];
    [pop setFontColor:[UIColor whiteColor]];
    
    pop.selectRowAtIndex = ^(NSInteger index){
        [sender setTitle:titles[index] forState:UIControlStateNormal];
    };
    [pop showWithAnimate:NO];
}

@end
