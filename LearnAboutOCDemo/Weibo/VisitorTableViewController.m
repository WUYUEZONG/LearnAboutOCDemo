//
//  VisitorTableViewController.m
//  LearnAboutOCDemo
//
//  Created by GINOKEO on 2021/6/18.
//

#import "VisitorTableViewController.h"

@interface VisitorTableViewController ()

@property (assign, nonatomic) BOOL *userLogin;

@end

@implementation VisitorTableViewController

- (void)loadView {
    _userLogin ? [super loadView] : [self setupVisitorUI];
}

- (void)setupVisitorUI {
    
    self.view = [[UIView alloc] init];
    
    
    
    
}

@end
