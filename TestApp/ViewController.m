//
//  ViewController.m
//  TestApp
//
//  Created by Alexey Baryshnikov on 15.10.2019.
//  Copyright © 2019 Alexey Baryshnikov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UILabel *lable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViewController];
    [self setupTabBar];
    
}

- (void)setupTabBar {
    TableViewController *tbc = TableViewController.new;
    ScrollView *sv = ScrollView.new;
    CollectionViewController *cvc = CollectionViewController.new;
    
    NSArray *tabViewControllers = @[tbc, sv];
    
    [self setViewControllers:tabViewControllers];
    
    tbc.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"table view" image:nil tag:0];
    sv.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"scroll view" image:nil tag:1];
    cvc.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"collection view" image:nil tag:2];
}

- (void)setupViewController {
    self.view.backgroundColor = UIColor.grayColor;
    self.navigationItem.title = @"Tilte";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 30, 300, 30)];
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.textField];
    
    self.lable.text = @"lable";
    [self.view addSubview:self.lable];
}

@end
