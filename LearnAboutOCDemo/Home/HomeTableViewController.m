//
//  HomeTableViewController.m
//  LearnAboutOCDemo
//
//  Created by GINOKEO on 2021/6/17.
//

#import "HomeTableViewController.h"
#import "HomeCellModel.h"



@interface HomeTableViewController ()

@property (strong, nonatomic) NSArray<HomeSectionModel *> *dataSource;

@end

@implementation HomeTableViewController


- (void)loadView {
    [super loadView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _dataSource = [HomeSectionModel listDatas];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableViewCellDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _dataSource.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource[section].cell.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeCellIdentifier" forIndexPath:indexPath];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.textLabel.text = _dataSource[indexPath.section].cell[indexPath.row].title;
    cell.detailTextLabel.text = _dataSource[indexPath.section].cell[indexPath.row].detail;
    NSString *imageName = _dataSource[indexPath.section].cell[indexPath.row].image;
    cell.imageView.image = [UIImage systemImageNamed:imageName];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.section) {
        case 0:
            switch (indexPath.row) {
                case 0:
                    [self showWeiboController];
                    break;
                default:
                    break;
            }
            break;
            
        default:
            break;
    }
    
}

- (void)showWeiboController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Weibo" bundle:[NSBundle mainBundle]];
    UINavigationController *weibo = [storyBoard instantiateViewControllerWithIdentifier:@"TabNavgationController"];
    UIApplication.sharedApplication.windows.firstObject.rootViewController = weibo;
}

#pragma mark - UITableViewCellDataSouce
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return _dataSource[section].title;
}





@end
