//
//  AppDelegate.h
//  CoreData Entity Relationship
//
//  Created by Admin on 11/14/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

