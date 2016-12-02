//
//  GAUtil.m
//  GreenArmy
//
//  Created by Sathish Babu Sathyamoorthy on 2/12/16.
//  Copyright © 2016 Sathya Moorthy, Sathish (CSIRO IM&T, Clayton). All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Reachability.h"
#import "GAUtil.h"

@implementation GAUtil : NSObject

@synthesize alert;

- (id) init {
    self = [super init];
    if (self != nil) {
        self.alert = [[UIAlertView alloc]
                      initWithTitle:@"Error"
                      message: @"No internet connection, please try again later."
                      delegate:nil
                      cancelButtonTitle:@"OK"
                      otherButtonTitles:nil];
    }
    return self;
}

-(Boolean) notReachable {
    Reachability *networkReachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus networkStatus = [networkReachability currentReachabilityStatus];
    return (networkStatus == NotReachable);
}

-(void) showAlert {
    [self.alert show];
}

@end
