//
//  BooksViewController.h
//  CoreData Entity Relationship
//
//  Created by Admin on 11/14/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BooksViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    
    AppDelegate *appDelegate ;
    NSManagedObjectContext *moc;
    NSSet *bookSet;
}

@property (strong,nonatomic) NSManagedObject *currentUser;

@end

NS_ASSUME_NONNULL_END
