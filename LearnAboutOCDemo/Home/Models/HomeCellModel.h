//
//  HomeCellModel.h
//  LearnAboutOCDemo
//
//  Created by GINOKEO on 2021/6/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeCellModel : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *detail;
@property (strong, nonatomic) NSString *image;

@end

@interface HomeSectionModel : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSArray<HomeCellModel *> *cell;

+ (NSArray<HomeSectionModel *> *)listDatas;

@end



NS_ASSUME_NONNULL_END
