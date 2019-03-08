//
//  InsertUserViewController.m
//  CoreData Entity Relationship
//
//  Created by Admin on 11/14/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import "InsertUserViewController.h"
#import "ViewController.h"

@interface InsertUserViewController ()

@end

@implementation InsertUserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    moc = appDelegate.persistentContainer.viewContext;
}

- (IBAction)insertButtonPressed:(UIButton *)sender {
    
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"User" inManagedObjectContext:moc];
    NSManagedObject *newUser = [[NSManagedObject alloc]initWithEntity:entity insertIntoManagedObjectContext:moc];
    
    [newUser setValue:_nameTextFieldOutlet.text forKey:@"name"];
    [newUser setValue:_idTextFieldOutlet.text forKey:@"id"];
    [newUser setValue:_mobileTextFieldOutlet.text forKey:@"mobile"];
    
    
    NSError *error = nil;
    if( ![newUser.managedObjectContext save:&error]){
        
        NSLog(@"Error in inserting user");
    }
    
    
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ViewController *viewController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.navigationController pushViewController:viewController animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
