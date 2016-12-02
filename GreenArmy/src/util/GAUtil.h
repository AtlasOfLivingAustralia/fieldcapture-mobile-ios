//
//  GAUtil.h
//  GreenArmy
//
//  Created by Sathish Babu Sathyamoorthy on 2/12/16.
//  Copyright © 2016 Sathya Moorthy, Sathish (CSIRO IM&T, Clayton). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIAlertView.h>

@interface GAUtil : NSObject
@property (nonatomic, strong) UIAlertView *alert;
- (void) showAlert;
- (Boolean) notReachable;

@end
