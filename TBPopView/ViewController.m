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
{
    TBPopoverView *pop;
    TBPopoverView *pop2;
    TBPopoverView *pop3;
}
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
    if ((!pop) && sender.tag == 1) {
        pop = [[TBPopoverView alloc] initWithTouchView:sender popWidth:200];
        [pop setTitleArray:titles];
        [pop setImageArray:images];
        
        [pop setFontSize:18.0f];
        [pop setFontColor:[UIColor whiteColor]];
        
        pop.selectRowAtIndex = ^(NSInteger index){
            [sender setTitle:titles[index] forState:UIControlStateNormal];
        };
    }
    
    if ((!pop2) && sender.tag == 2) {
        pop2 = [[TBPopoverView alloc] initWithTouchView:sender popWidth:200];
        [pop2 setTitleArray:titles];
        [pop2 setImageArray:images];
        
        [pop2 setFontSize:18.0f];
        [pop2 setFontColor:[UIColor whiteColor]];
        
        pop2.selectRowAtIndex = ^(NSInteger index){
            [sender setTitle:titles[index] forState:UIControlStateNormal];
        };
    }
    
    if ((!pop3) && sender.tag == 3) {
        pop3 = [[TBPopoverView alloc] initWithTouchView:sender popWidth:200];
        [pop3 setTitleArray:titles];
        [pop3 setImageArray:images];
        
        [pop3 setFontSize:18.0f];
        [pop3 setFontColor:[UIColor whiteColor]];
        
        pop3.selectRowAtIndex = ^(NSInteger index){
            [sender setTitle:titles[index] forState:UIControlStateNormal];
        };
    }
    
    
    switch (sender.tag) {
        case 1:
            [pop setArrowPosition:ArrowPositionInLeft];
            [pop show];
            break;
        case 2:
            [pop2 setArrowPosition:ArrowPositinInMiddle];
            [pop2 show];
            break;
        case 3:
            [pop3 setArrowPosition:ArrowPositionInRight];
            [pop3 show];
            break;
            
        default:
            break;
    }
    
}

@end
