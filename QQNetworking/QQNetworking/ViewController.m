//
//  ViewController.m
//  QQNetworking
//
//  Created by Leiqiqi on 16/9/26.
//  Copyright © 2016年 Leiqiqi. All rights reserved.
//

#import "ViewController.h"
#import "LQModelService.h"


@interface ViewController ()

@property(nonatomic, strong)LQModelService *modelService;
@property(nonatomic, strong)NSArray *seriseArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.seriseArray = [NSArray array];
    
    
    self.modelService = [[LQModelService alloc]init];
    
    
//    [self.modelService getRequestPieData:^(BOOL success, id result, NSString *message) {
//        if (success) {
// //            NSLog(@"result+++++++++%@", result);
//            self.seriseArray = [result objectForKey:@"series"];
//            [self getData];
//        }
//        else{

//        }
//    }];
    
    
    
    
// //   图片上传
//    UIImage *image = [UIImage imageNamed:@"动态"];
//    NSArray *array = [NSArray arrayWithObjects:image, nil];
//    [self.modelService uploadImageWithImageArray:array finished:^(BOOL success, id result, NSString *message) {
       
//        if (success) {
           
//        }
//        else{
           
//        }
//    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)getData
{
    NSLog(@"aaaaaaa%@", self.seriseArray);

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
