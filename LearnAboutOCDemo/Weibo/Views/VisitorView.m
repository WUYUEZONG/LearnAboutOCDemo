//
//  VisitorView.m
//  LearnAboutOCDemo
//
//  Created by GINOKEO on 2021/6/18.
//

#import "VisitorView.h"

@interface VisitorView ()

@property (strong, nonatomic) UIImageView *imageView;

@end

@implementation VisitorView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubViews];
    }
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupSubViews];
    }
    return self;
}

- (void)setupSubViews {
    _imageView = [[UIImageView alloc] init];
    _imageView.tintColor = UIColor.systemOrangeColor;
    _imageView.contentMode = UIViewContentModeScaleAspectFit;
    _imageView.translatesAutoresizingMaskIntoConstraints = false;
    NSLayoutConstraint *imageHeight = [NSLayoutConstraint constraintWithItem:_imageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:160];
    [_imageView addConstraint:imageHeight];
}

/**:
 设置默认显示的图片、文字、按钮
 
 @paramater imageName: 图片名称
 @paramater text: 说明文字
 */
- (void)setHoldStyle:(NSString *)imageName WithText:(NSString *)text {
   
    UIImage *image = [UIImage systemImageNamed:imageName];
    _imageView.image = image;
    
    
    UILabel *label = [UILabel new];
    label.text = text;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = UIColor.systemGray3Color;
    label.numberOfLines = 0;
    [label sizeToFit];
    
    UIButton *registerBtn = [self getLoginButton:@"REGISTER" color:UIColor.systemGray6Color];
    UIButton *loginBtn = [self getLoginButton:@"LOGIN" color:UIColor.systemOrangeColor];
    registerBtn.translatesAutoresizingMaskIntoConstraints = false;
    CGFloat registerBtnConstant = registerBtn.frame.size.width;
    NSLayoutConstraint *registerBtnWidth = [NSLayoutConstraint constraintWithItem:registerBtn attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:registerBtnConstant];
    [registerBtn addConstraint:registerBtnWidth];
    
    NSArray<UIView *> *hStackViews = @[registerBtn, loginBtn];
    UIStackView *hStackView = [[UIStackView alloc] initWithArrangedSubviews:hStackViews];
    hStackView.axis = UILayoutConstraintAxisHorizontal;
    hStackView.distribution = UIStackViewDistributionFillEqually;
    hStackView.spacing = 16;
    
    NSArray<UIView *> *stackViews = @[_imageView, label, hStackView];
    UIStackView *stackView = [[UIStackView alloc] initWithArrangedSubviews:stackViews];
    stackView.axis = UILayoutConstraintAxisVertical;
    stackView.spacing = 24;
    
    [self addSubview:stackView];
    
    stackView.translatesAutoresizingMaskIntoConstraints = false;
    NSLayoutConstraint *x = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:stackView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    NSLayoutConstraint *y = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:stackView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    [self addConstraints:@[x, y]];
}

- (UIButton *)getLoginButton:(NSString *)title color:(UIColor *)backgroundColor {
    UIButton *btn = [UIButton new];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    btn.backgroundColor = backgroundColor;
    [btn setContentEdgeInsets:UIEdgeInsetsMake(8, 20, 8, 20)];
    [btn sizeToFit];
    // 同时设置这两个属性会产生离屏渲染
    // btn.layer.masksToBounds = YES;
    btn.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMaxYCorner;
    btn.layer.cornerRadius = 8;
    return btn;
}

- (void)showImageAnimation {
    
    CABasicAnimation *basic = [[CABasicAnimation alloc] init];
    [basic setKeyPath:@"transform.rotation"];
    basic.toValue = @(M_PI * 2);
    basic.repeatCount = MAXFLOAT;
    basic.duration = 16;
    basic.removedOnCompletion = NO;
    [_imageView.layer addAnimation:basic forKey:nil];
}


@end
