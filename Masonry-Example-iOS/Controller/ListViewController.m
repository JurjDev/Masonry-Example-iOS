//
//  ListViewController.m
//  Masonry-Example-iOS
//
//  Created by JurjDev on 8/07/21.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

NSString *kCellIdentifier = nil;

NSArray<NSString *> *demos = nil;

- (NSArray<NSString *>*) getDemos {
    
    if (demos == nil) {
        
        demos = @[@"Simple Layout", @"Basic UIScrollView"];
    }
    return demos;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    kCellIdentifier = @"CellIdentifier";
    
    self.title = @"Masonry iOS Demos";
    [self.tableView registerClass:UITableViewCell.self forCellReuseIdentifier:kCellIdentifier];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self getDemos].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    cell.textLabel.text = demos[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        
        UIViewController *vc = [[SimpleViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
        
    } else if (indexPath.row == 1) {
        
        UIViewController *vc = [[BasicUIScrollViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    } else { return; }
}
@end
