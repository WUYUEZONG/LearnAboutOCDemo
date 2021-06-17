//
//  WeiboHomeTabController.m
//  LearnAboutOCDemo
//
//  Created by GINOKEO on 2021/6/17.
//

#import "WeiboHomeTabController.h"

@interface WeiboHomeTabController ()

@end

@implementation WeiboHomeTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.delegate = self;
    
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    BOOL isMid = [viewController.title isEqual: @"mid"];
    if (isMid) {
        UIViewController *newController = [UIViewController new];
        [self.navigationController presentViewController:newController animated:YES completion:nil];
    }
    return !isMid;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    self.title = tabBarController.tabBar.selectedItem.title;
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
