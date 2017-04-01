//
//  ViewController.m
//  ZYCRippleButton
//
//  Created by 朱佳杰 on 2017/4/1.
//  Copyright © 2017年 zjj. All rights reserved.
//

#import "ViewController.h"
#import "ZYCRippleButton.h"

@interface ViewController ()

@property (nonatomic, strong) ZYCRippleButton *rippleButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.rippleButton = [[ZYCRippleButton alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 300)/2, 100 , 300, 100)];
    self.rippleButton.rippleLineWidth = 1;
    self.rippleButton.rippleColor = [UIColor whiteColor];
    [self.rippleButton setButtonTittle:@"测试按钮1" withTittleColor:[UIColor whiteColor] backgroundColor:[UIColor colorWithRed:36.0f/255.0f green:188.0f/255.0f blue:255.0f/255.0f alpha:0.5]];
    __block typeof(NSInteger) tapNum = 0;
    __block typeof(self) bself = self;
    self.rippleButton.rippleBlock = ^(void){
        [bself.rippleButton setButtonTittle:[NSString stringWithFormat:@"点击第%ld次",(long)tapNum++]];
    };
    [self.view addSubview:_rippleButton];
    
    ZYCRippleButton *rippleButton2 = [[ZYCRippleButton alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 300)/2, 300 , 300, 60)];
    rippleButton2.rippleLineWidth = 1;
    rippleButton2.rippleColor = [UIColor purpleColor];
    [rippleButton2 setButtonTittle:@"测试按钮2" withTittleColor:[UIColor whiteColor] backgroundColor:[UIColor orangeColor]];
    [self.view addSubview:rippleButton2];
    
    ZYCRippleButton *rippleButton3 = [[ZYCRippleButton alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 300)/2, 600 , 300, 300)];
    rippleButton3.rippleLineWidth = 10;
    rippleButton3.rippleColor = [UIColor redColor];
    [rippleButton3 setButtonTittle:@"测试按钮3" withTittleColor:[UIColor blueColor] backgroundColor:[UIColor whiteColor]];
    [self.view addSubview:rippleButton3];
    
}

- (void)onClick:(NSInteger)i{
    [self.rippleButton setButtonTittle:[NSString stringWithFormat:@"点击%ld次",(long)i++]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
