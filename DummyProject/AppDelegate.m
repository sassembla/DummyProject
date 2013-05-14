//
//  AppDelegate.m
//  DummyProject
//
//  Created by sassembla on 2013/05/14.
//  Copyright (c) 2013年 KISSAKI Inc,. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate {
    SEL m_receiver;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    m_receiver = @selector(receiver:);
    
    // Insert code here to initialize your application
    IMP func = [self methodForSelector:m_receiver];
    (* func)(self, m_receiver, aNotification);
}

- (void) receiver:(NSNotification * )notif {
    NSLog(@"hereComes %@", notif);
    
    int a = 0;
    
    switch (a) {
        case 0:{
            break;
        }
        case -1:{
            NSDictionary * dict = @{@"key":@"val"};
            break;
        }
            
        default:
            break;
    }
}

@end
