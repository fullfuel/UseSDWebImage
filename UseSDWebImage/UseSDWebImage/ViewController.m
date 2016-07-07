//
//  ViewController.m
//  UseSDWebImage
//
//  Created by baishiqi on 16/7/7.
//  Copyright © 2016年 baishiqi. All rights reserved.
//

#import "ViewController.h"

#import "NSData+ImageContentType.h"
#import "UIImage+GIF.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 使用SDWebImage提供的类别判断和显示gif文件
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"123321" ofType:@"gif"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSString *imageType = [NSData sd_contentTypeForImageData:data];
    if ([imageType isEqualToString:@"image/gif"]) {
        NSLog(@"gif");
    }
    UIImage *image = [UIImage sd_animatedGIFWithData:data];
    
    self.imageView.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
