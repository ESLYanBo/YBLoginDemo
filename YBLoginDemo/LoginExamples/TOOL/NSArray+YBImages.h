//
//  NSArray+YBImages.h
//  YBLoginDemo
//
//  Created by 王晨辉 on 2018/3/20.
//  Copyright © 2018年 王晨辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSArray (YBImages)

+ (NSArray *)YB_imagesWithLocalGif:(NSString *)gifName;

+ (NSArray *)YB_imagesWithLocalGif:(NSString *)gifName expectSize:(CGSize)size;

@end
