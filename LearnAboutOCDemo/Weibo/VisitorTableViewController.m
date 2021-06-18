//
//  VisitorTableViewController.m
//  LearnAboutOCDemo
//
//  Created by GINOKEO on 2021/6/18.
//

#import "VisitorTableViewController.h"

@interface VisitorTableViewController ()



@end



@implementation VisitorTableViewController

- (void)loadView {
    _userLogin ? [super loadView] : [self setupVisitorUI];
}

- (void)setupVisitorUI {
    
    _visitorView = [[VisitorView alloc] init];
    self.view = _visitorView;
    self.view.backgroundColor = UIColor.whiteColor;
    //[self setHoldStyle:@"sun.max" WithText:@"go go go, login for fun! go go go, login for fun! go go go, login for fun!"];
    
}





@end


