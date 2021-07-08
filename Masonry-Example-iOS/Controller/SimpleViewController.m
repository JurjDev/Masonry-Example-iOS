//
//  SimpleViewController.m
//  Masonry-Example-iOS
//
//  Created by JurjDev on 8/07/21.
//

#import "SimpleViewController.h"

@interface SimpleViewController ()

@end

@implementation SimpleViewController

- (UIView*) blackView {
    
    if (_blackView == nil) {
        _blackView = [[UIView alloc] init];
        _blackView.backgroundColor = [UIColor blackColor];
    }
    return _blackView;
}

- (UIView*) redView {
    
    if (_redView == nil) {
        _redView = [[UIView alloc] init];
        _redView.backgroundColor = [UIColor redColor];
    }
    return _redView;
}

- (UIView*) yellowView {
    
    if (_yellowView == nil) {
        _yellowView = [[UIView alloc] init];
        _yellowView.backgroundColor = [UIColor yellowColor];
    }
    return _yellowView;
}

- (UIView*) blueView {
    
    if (_blueView == nil) {
        _blueView = [[UIView alloc] init];
        _blueView.backgroundColor = [UIColor blueColor];
    }
    return _blueView;
}

- (UIView*) greenView {
    
    if (_greenView == nil) {
        _greenView = [[UIView alloc] init];
        _greenView.backgroundColor = [UIColor greenColor];
    }
    return _greenView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview: [self blackView]];
    [self.view addSubview: [self redView]];
    [self.view addSubview: [self yellowView]];
    [self.view addSubview: [self blueView]];
    [self.view addSubview: [self greenView]];
    
    [self.view setNeedsUpdateConstraints];
}

- (void)updateViewConstraints {
    
    if (_didSetupConstraints == NO) {
        
        UIView *superView = [self view];
        
        CGSize square = CGSizeMake(100, 100);
        
        [_blackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(superView);
            make.size.mas_equalTo(square);
        }];
        
        [_redView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_blackView.mas_bottom).with.offset(20);
            make.right.equalTo(_blackView.mas_left).with.offset(-20);
            make.size.mas_equalTo(square);
        }];
        
        [_yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_blackView.mas_bottom).offset(20);
            make.left.equalTo(_blackView.mas_right).offset(20);
            make.size.mas_equalTo(square);
        }];
        
        [_blueView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(_blackView.mas_top).offset(-20);
            make.left.equalTo(_blackView.mas_right).offset(20);
            make.size.mas_equalTo(square);
        }];
        
        [_greenView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(_blackView.mas_top).offset(-20);
            make.right.equalTo(_blackView.mas_left).offset(-20);
            make.size.mas_equalTo(square);
        }];
        
        _didSetupConstraints = YES;
    }
    
    [super updateViewConstraints];
}

@end
