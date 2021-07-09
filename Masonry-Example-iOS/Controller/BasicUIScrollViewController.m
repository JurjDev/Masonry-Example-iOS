//
//  BasicUIScrollViewController.m
//  Masonry-Example-iOS
//
//  Created by JurjDev on 8/07/21.
//

#import "BasicUIScrollViewController.h"

@interface BasicUIScrollViewController ()

@end

@implementation BasicUIScrollViewController

- (UIScrollView *) scrollView {
    
    if (_scrollView == nil) {
        
        _scrollView = [[UIScrollView alloc] init];
    }
    return _scrollView;
}

- (UIView *) contentView {
    
    if (_contentView == nil) {
        
        _contentView = [[UIView alloc] init];
    }
    return _contentView;
}

- (UILabel *) label {
    
    if (_label == nil) {
        
        _label = [[UILabel alloc] init];
        _label.backgroundColor = [UIColor blueColor];
        _label.numberOfLines = 0;
        _label.lineBreakMode = NSLineBreakByClipping;
        _label.textColor = [UIColor whiteColor];
        _label.text = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
    }
    return _label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview: [self scrollView]];
    
    [self contentView].backgroundColor = [UIColor lightGrayColor];
    [_scrollView addSubview: _contentView];
    [_contentView addSubview: [self label]];
    
    [self.view setNeedsUpdateConstraints];
}

- (void)updateViewConstraints {
    
    if (_didSetupConstraints == NO) {
        
        [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.edges.equalTo(self.view).insets(UIEdgeInsetsZero);
        }];
        
        [_contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.edges.equalTo(_scrollView).insets(UIEdgeInsetsZero);
            make.width.equalTo(_scrollView);
        }];
        
        [_label mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.edges.equalTo(_contentView).inset(20);
        }];
        
        _didSetupConstraints = YES;
    }
    
    [super updateViewConstraints];
}

@end
