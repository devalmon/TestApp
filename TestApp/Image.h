//
//  Image.h
//  TestApp
//
//  Created by Alexey Baryshnikov on 20.10.2019.
//  Copyright © 2019 Alexey Baryshnikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Image : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *numberOfImage;
@property (strong, nonatomic) UIImage *image;

@end

NS_ASSUME_NONNULL_END
