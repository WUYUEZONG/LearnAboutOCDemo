//
//  HomeTableViewController.m
//  LearnAboutOCDemo
//
//  Created by GINOKEO on 2021/6/17.
//

#import "HomeTableViewController.h"
#import "HomeCellModel.h"

@interface HomeTableViewController ()

@property (strong, nonatomic) NSArray<HomeCellModel *> *dataSource;

@end

@implementation HomeTableViewController

- (void)loadView {
    [super loadView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *testArr = @[@"a", @"b"];
    NSArray *strArr = testArr;

    testArr = nil;
    NSLog(@"print str is %@", strArr);
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}



@end
