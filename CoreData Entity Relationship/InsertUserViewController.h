//
//  InsertUserViewController.h
//  CoreData Entity Relationship
//
//  Created by Admin on 11/14/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface InsertUserViewController : UIViewController{
    
    AppDelegate *appDelegate ;
    NSManagedObjectContext *moc;
}



@property (weak, nonatomic) IBOutlet UITextField *nameTextFieldOutlet;
@property (weak, nonatomic) IBOutlet UITextField *idTextFieldOutlet;
@property (weak, nonatomic) IBOutlet UITextField *mobileTextFieldOutlet;
- (IBAction)insertButtonPressed:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
