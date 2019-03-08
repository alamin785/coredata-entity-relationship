//
//  ViewController.m
//  CoreData Entity Relationship
//
//  Created by Admin on 11/14/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import "ViewController.h"
#import "UserTableViewCell.h"
#import "BooksViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    moc = appDelegate.persistentContainer.viewContext;
    [self loadData];
}


//Loading UserInfo
-(void)loadData{
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"User"];
    NSError *error = nil;
    NSArray *results = [moc executeFetchRequest:request error:&error];
    _users = results;
    
    if(error){
        NSLog(@"Error in Fetching data");
    }
    
    
}




//TableView Datasource Methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 95;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [_users count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UserTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"userCellID"];
    NSManagedObject *currentUser = _users[indexPath.row];
    
    cell.userNameOutlet.text = [currentUser valueForKey:@"name"];
    cell.userMobileOutlet.text = [currentUser valueForKey:@"mobile"];
    cell.userIdOutlet.text = [currentUser valueForKey:@"id"];
    
    
    return cell;
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    BooksViewController *viewController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"BooksViewController"];
    viewController.currentUser = _users[indexPath.row];
    
    
    [self.navigationController pushViewController:viewController animated:YES];
}




@end
