//
//  HomeCellModel.m
//  LearnAboutOCDemo
//
//  Created by GINOKEO on 2021/6/17.
//

#import "HomeCellModel.h"

@implementation HomeCellModel

//+ (NSArray<NSArray<HomeCellModel *> *> *)listDatas {
//    HomeCellModel *m1 = [[HomeCellModel alloc] init];
//    m1.title = @"Weibo Project";
//    m1.detail = @"this is a project to learn about OC";
//    NSMutableArray<HomeCellModel *> *listData1 = [NSMutableArray new];
//    [listData1 addObject:m1];
//
//    NSMutableArray *data = [NSMutableArray new];
//    [data addObject:listData1];
//    return data;
//}

@end

@implementation HomeSectionModel

+ (NSArray<HomeSectionModel *> *)listDatas {
    HomeCellModel *m1 = [[HomeCellModel alloc] init];
    m1.title = @"Weibo Project";
    m1.detail = @"this is a project to learn about OC";
    m1.image = @"w.square";
    HomeSectionModel *s1 = [HomeSectionModel new];
    s1.title = @"THE FIRST SECTION";
    s1.cell = @[m1];
    NSMutableArray<HomeSectionModel *> *listData = [NSMutableArray new];
    [listData addObject:s1];
    return listData;
}

@end
