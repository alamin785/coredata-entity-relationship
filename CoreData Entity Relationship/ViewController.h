//
//  ViewController.h
//  CoreData Entity Relationship
//
//  Created by Admin on 11/14/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    
    AppDelegate *appDelegate ;
    NSManagedObjectContext *moc;
}

@property (weak, nonatomic) IBOutlet UITableView *tableViewOutlet;
@property (strong,nonatomic) NSArray *users;





@end

