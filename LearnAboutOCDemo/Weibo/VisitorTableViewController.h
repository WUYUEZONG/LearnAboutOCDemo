//
//  VisitorTableViewController.h
//  LearnAboutOCDemo
//
//  Created by GINOKEO on 2021/6/18.
//

#import <UIKit/UIKit.h>
#import "VisitorView.h"


NS_ASSUME_NONNULL_BEGIN

@interface VisitorTableViewController : UITableViewController

@property (assign, nonatomic) BOOL *userLogin;

@property (strong, nonatomic) VisitorView *visitorView;

@end

NS_ASSUME_NONNULL_END

