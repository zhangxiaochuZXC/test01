//
//  ViewController.m
//  06-仿SDWebImage
//
//  Created by zhangjie on 16/8/13.
//  Copyright © 2016年 zhangjie. All rights reserved.
//

#import "ViewController.h"
#import "DownloadOperation.h"

@interface ViewController ()

@end

@implementation ViewController {
    
    /// 全局队列
    NSOperationQueue *_queue;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 实例化全局队列
    _queue = [[NSOperationQueue alloc] init];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 实例化自定义下载操作
    DownloadOperation *op = [[DownloadOperation alloc] init];
    // 添加到队列
    [_queue addOperation:op];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
