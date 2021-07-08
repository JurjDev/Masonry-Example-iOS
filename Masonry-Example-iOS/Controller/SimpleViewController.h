//
//  SimpleViewController.h
//  Masonry-Example-iOS
//
//  Created by JurjDev on 8/07/21.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

@interface SimpleViewController : UIViewController

@property BOOL didSetupConstraints;

@property (strong, nonatomic) UIView *blackView;
@property (strong, nonatomic) UIView *redView;
@property (strong, nonatomic) UIView *yellowView;
@property (strong, nonatomic) UIView *blueView;
@property (strong, nonatomic) UIView *greenView;

@end
