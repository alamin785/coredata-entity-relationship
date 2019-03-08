//
//  InsertBookViewController.h
//  CoreData Entity Relationship
//
//  Created by Admin on 11/14/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface InsertBookViewController : UIViewController{
    
    AppDelegate *appDelegate ;
    NSManagedObjectContext *moc;
}
@property (strong,nonatomic) NSManagedObject *currentUser;

@property (weak, nonatomic) IBOutlet UITextField *bookNameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *bookAuthorOutlet;
@property (weak, nonatomic) IBOutlet UITextField *bookCnOutlet;
@property (weak, nonatomic) IBOutlet UITextField *bookAvailablityOutlet;
- (IBAction)insertButtonPressed:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
