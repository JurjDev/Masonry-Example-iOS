//
//  SceneDelegate.m
//  Masonry-Example-iOS
//
//  Created by JurjDev on 8/07/21.
//

#import "SceneDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    _window = [[UIWindow alloc] initWithWindowScene:windowScene];
    
    ListViewController *lvc = [[ListViewController alloc] init];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:lvc];
    
    [_window setRootViewController: navController];
    [_window setBackgroundColor: [UIColor whiteColor]];
    [_window makeKeyAndVisible];
}

@end
