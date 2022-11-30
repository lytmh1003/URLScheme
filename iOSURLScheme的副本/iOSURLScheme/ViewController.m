//
//  ViewController.m
//  iOSURLScheme
//
//  Created by 李育腾 on 2022/11/25.
//

#import "ViewController.h"

@interface ViewController ()
@property UIButton* buttonURL;
@property UIButton* buttonMessage;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buttonURL = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.buttonURL setTitle:@"Pick To DailyNews" forState:UIControlStateNormal];
    self.buttonURL.frame = CGRectMake(100, 200, 150, 50);
    [self.buttonURL addTarget:self action:@selector(toDaliyNews:) forControlEvents:UIControlEventTouchUpInside];
    self.buttonURL.tag = 0;
    [self.view addSubview:self.buttonURL];
    
    self.buttonMessage = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.buttonMessage setTitle:@"send Message" forState:UIControlStateNormal];
    self.buttonMessage.tag =
    1;    self.buttonMessage.frame = CGRectMake(100, 250, 150, 50);
    [self.buttonMessage addTarget:self action:@selector(toDaliyNews:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonMessage];
    
}
- (void)toDaliyNews:(UIButton *)button {
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"LytAppDaliyNews://"]options:@{}completionHandler:nil];
    if (button.tag == 0) {
        // 打开网站
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.youtube.com/watch?v=WZH30T99MaM"]options:@{}completionHandler:nil];
    } else if (button.tag == 1) {
        // 发短信
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"sms:+12345678901"]options:@{}completionHandler:nil];
    }
}

@end
