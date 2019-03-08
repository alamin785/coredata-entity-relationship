//
//  UserTableViewCell.h
//  CoreData Entity Relationship
//
//  Created by Admin on 11/14/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *userNameOutlet;
@property (weak, nonatomic) IBOutlet UILabel *userIdOutlet;
@property (weak, nonatomic) IBOutlet UILabel *userMobileOutlet;

@end

NS_ASSUME_NONNULL_END
