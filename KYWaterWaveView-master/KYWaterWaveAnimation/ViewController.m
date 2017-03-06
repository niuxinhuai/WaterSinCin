//
//  ViewController.m
//  KYWaterWaveAnimation
//
//  Created by Kitten Yang on 3/16/15.
//  Copyright (c) 2015 Kitten Yang. All rights reserved.
//

#import "ViewController.h"
#import "KYWaterWaveView.h"


@interface ViewController()
{
    KYWaterWaveView * waterV;
    UILabel * label;
}
@property (strong, nonatomic) IBOutlet KYWaterWaveView *waterViewXib;

@end

@implementation ViewController{
    KYWaterWaveView *waterView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
//    waterView = [[KYWaterWaveView alloc]initWithFrame:CGRectMake(0, 50, 50, 50)];
//    [self.view addSubview:waterView];
//    waterView.layer.cornerRadius  = waterView.frame.size.width / 2;
//    waterView.waveSpeed = 6.0f;
//    waterView.waveAmplitude = 3.0f;
//    [waterView wave];
    
//    self.waterViewXib.layer.cornerRadius = self.waterViewXib.frame.size.width / 2;
    
     waterV = [[KYWaterWaveView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 300)];
    [self.view addSubview:waterV];
    
    
    waterV.waveSpeed = 3.0f;
    waterV.waveAmplitude = 6.0f;
    [waterV wave];
    
    label = [[UILabel alloc]init];
    label.center = CGPointMake(CGRectGetWidth(waterV.frame)/2, CGRectGetHeight(waterV.frame)/2);
    label.bounds = CGRectMake(0, 0, 100, 50);
    label.text = @"我是水波纹";
    label.textColor = [UIColor purpleColor];
    [waterV addSubview:label];

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    for (UITouch *touch in touches) {
        CGPoint point = [touch locationInView:waterV];
        label.center = point;
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
