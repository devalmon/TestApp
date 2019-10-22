//
//  ScrollView.m
//  TestApp
//
//  Created by Alexey Baryshnikov on 20.10.2019.
//  Copyright © 2019 Alexey Baryshnikov. All rights reserved.
//

#import "ScrollView.h"

@interface ScrollView ()
@property (nonatomic, strong) UISlider *frameSlider;
@property (nonatomic, strong) UISlider *boundsSlider;
@property (nonatomic, strong) UISearchBar *searchBar;
@end

@implementation ScrollView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTitle];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    scrollView.backgroundColor = UIColor.orangeColor;
    [scrollView setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * 4)];
    [self.view addSubview:scrollView];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(40, 120, 120, 120)];
    redView.backgroundColor = UIColor.redColor;
    redView.layer.cornerRadius = 12.0f;
//    [scrollView addSubview:redView];
    [redView.widthAnchor constraintEqualToConstant:100].active = YES;
    [redView.heightAnchor constraintEqualToConstant:120].active = YES;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 240, 50, 15)];
    label.text = @"label";
//    [scrollView addSubview:label];
    [label.widthAnchor constraintEqualToConstant:100].active = YES;
    [label.heightAnchor constraintEqualToConstant:120].active = YES;
    
    [self setupSlider];
//    [scrollView addSubview:_frameSlider];
//    [scrollView addSubview:_boundsSlider];
    
    _searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(20, 550, 360, 50)];
//    [scrollView addSubview:_searchBar];
    [_searchBar.widthAnchor constraintEqualToConstant:360].active = YES;
    [_searchBar.heightAnchor constraintEqualToConstant:50].active = YES;
    
//    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
    
    UIStackView *stackView = [[UIStackView alloc] init];
    stackView.axis = UILayoutConstraintAxisVertical;
    stackView.distribution = UIStackViewDistributionEqualSpacing;
    stackView.alignment = UIStackViewAlignmentCenter;
    stackView.spacing = 30;
    
    [stackView addArrangedSubview:redView];
    [stackView addArrangedSubview:label];
    [stackView addArrangedSubview:_searchBar];
    [stackView addArrangedSubview:_frameSlider];
    [stackView addArrangedSubview:_boundsSlider];
    
    stackView.translatesAutoresizingMaskIntoConstraints = NO;
    [scrollView addSubview:stackView];
    
    [stackView.centerXAnchor constraintEqualToAnchor:scrollView.centerXAnchor].active = YES;
    [stackView.centerYAnchor constraintEqualToAnchor:scrollView.centerYAnchor].active = YES;
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [scrollView addGestureRecognizer:tap];
    /*
    label.translatesAutoresizingMaskIntoConstraints = NO;
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    [label.topAnchor constraintEqualToAnchor:redView.bottomAnchor constant:20].active = YES;
    [redView.topAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:40].active = YES;
     */
}


- (void)dismissKeyboard {
    [self.view endEditing:YES];
}

- (void)setupSlider {
    _frameSlider = [[UISlider alloc] initWithFrame:CGRectMake(20, 400, 360, 20)];
    _boundsSlider = [[UISlider alloc] initWithFrame:CGRectMake(20, 500, 360, 20)];
    [_frameSlider.widthAnchor constraintEqualToConstant:360].active = YES;
    [_frameSlider.heightAnchor constraintEqualToConstant:20].active = YES;
    [_boundsSlider.widthAnchor constraintEqualToConstant:360].active = YES;
    [_boundsSlider.heightAnchor constraintEqualToConstant:20].active = YES;
}

- (void)setupTitle {
    self.navigationController.visibleViewController.title = @"Scrollview";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
