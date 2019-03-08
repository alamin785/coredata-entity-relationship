//
//  InsertBookViewController.m
//  CoreData Entity Relationship
//
//  Created by Admin on 11/14/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import "InsertBookViewController.h"
#import "BooksViewController.h"

@interface InsertBookViewController ()

@end

@implementation InsertBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    moc = appDelegate.persistentContainer.viewContext;
    
}


- (IBAction)insertButtonPressed:(UIButton *)sender {
    NSEntityDescription *bookEntity = [NSEntityDescription entityForName:@"Book" inManagedObjectContext:moc];
    NSManagedObject *newBook = [[NSManagedObject alloc]initWithEntity:bookEntity insertIntoManagedObjectContext:moc];
    
    [newBook setValue:_bookNameOutlet.text forKey:@"name"];
    [newBook setValue:_bookCnOutlet.text forKey:@"cn"];
    [newBook setValue:_bookAuthorOutlet.text forKey:@"author"];
    [newBook setValue:_bookAvailablityOutlet.text forKey:@"availblity"];
    
    [_currentUser setValue:[NSSet setWithObject:newBook] forKey:@"books"];
    NSError *error = nil;
    
    if(![_currentUser.managedObjectContext save:&error]){
        NSLog(@"Error inserting Book");
    }
    
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    BooksViewController *viewController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"BooksViewController"];
    [self.navigationController pushViewController:viewController animated:YES];
}
@end
