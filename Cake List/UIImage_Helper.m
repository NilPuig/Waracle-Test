//
//  UIImage+Custom.m
//  Cake List
//
//  Created by Nil Puig on 31/1/18.
//  Copyright © 2018 Stewart Hart. All rights reserved.
//

#import "UIImage_Helper.h"

@implementation UIImage_Helper

+ (UIImage *)imageWithImage:(UIImage *)image convertToSize:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *destImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return destImage;
}

@end
