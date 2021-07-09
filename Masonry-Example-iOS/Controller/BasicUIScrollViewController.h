//
//  BasicUIScrollViewController.h
//  Masonry-Example-iOS
//
//  Created by JurjDev on 8/07/21.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

@interface BasicUIScrollViewController : UIViewController

@property BOOL didSetupConstraints;

@property (strong, nonatomic) UIScrollView *scrollView;

@property (strong, nonatomic) UIView *contentView;

@property (strong, nonatomic) UILabel *label;

@end
