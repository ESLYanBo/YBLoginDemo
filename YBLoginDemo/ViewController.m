//
//  ViewController.m
//  YBLoginDemo
//
//  Created by 王晨辉 on 2018/3/20.
//  Copyright © 2018年 王晨辉. All rights reserved.
//

#import "ViewController.h"
#import "YB_LoginExampleOne.h"
#import "YB_LoginExampleTwo.h"
#import "YB_LoginExampleThe.h"
#import "YB_LoginExampleFur.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)setupUI{
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.estimatedRowHeight = 0.f;
    tableView.estimatedSectionHeaderHeight = 0.f;
    tableView.estimatedSectionFooterHeight = 0.f;
    [self.view addSubview:tableView];
    
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"UITableViewCell"];
    }
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"YBLoginDemo1";
        cell.detailTextLabel.text = @"普通登录页";
    }else if (indexPath.row == 1){
        cell.textLabel.text = @"YBLoginDemo2";
        cell.detailTextLabel.text = @"Gif登录页";
    }else if (indexPath.row == 2){
        cell.textLabel.text = @"YBLoginDemo3";
        cell.detailTextLabel.text = @"模糊登录页";
    }else if (indexPath.row == 3){
        cell.textLabel.text = @"YBLoginDemo4";
        cell.detailTextLabel.text = @"重力登录页";
    }
    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}


#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:{
            YB_LoginExampleOne *login01VC = [[YB_LoginExampleOne alloc] init];
            [self.navigationController pushViewController:login01VC animated:YES];
            NSLog(@"11111");

        }
            break;
        case 1:{
            YB_LoginExampleTwo *login02VC = [[YB_LoginExampleTwo alloc] init];
            [self.navigationController pushViewController:login02VC animated:YES];
            NSLog(@"22222");

        }
            break;
        case 2:{
            YB_LoginExampleThe *login03VC = [[YB_LoginExampleThe alloc] init];
            [self.navigationController pushViewController:login03VC animated:YES];
            NSLog(@"33333");

        }
            break;
        case 3:{
            YB_LoginExampleFur *login04VC = [[YB_LoginExampleFur alloc] init];
            [self.navigationController pushViewController:login04VC animated:YES];
            NSLog(@"44444");

        }
            break;
        default:
            break;
    }
    
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    return nil;
}


- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return nil;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44.f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 0.001f;
}

@end
