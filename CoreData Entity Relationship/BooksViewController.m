//
//  BooksViewController.m
//  CoreData Entity Relationship
//
//  Created by Admin on 11/14/18.
//  Copyright © 2018 iZak. All rights reserved.
//

#import "BooksViewController.h"
#import "BookTableViewCell.h"
#import "InsertBookViewController.h"

@interface BooksViewController ()

@end

@implementation BooksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    moc = appDelegate.persistentContainer.viewContext;
    [self loadData];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [bookSet count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    BookTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"bookCellID"];
    
    
    NSManagedObject *currentBook;
    
    for(currentBook in bookSet){
        cell.name.text = [currentBook valueForKey:@"name"];
        cell.author.text = [currentBook valueForKey:@"author"];
        cell.cn.text = [currentBook valueForKey:@"cn"];
        cell.availablity.text = [currentBook valueForKey:@"availblity"];
        
        
    }
    
    
    
    
    return cell;
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 101;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    InsertBookViewController *nextViewController = segue.destinationViewController;
    nextViewController.currentUser = _currentUser;
    
    
}

-(void)loadData{
    
    NSMutableSet *book = [_currentUser mutableSetValueForKey:@"books"];
    bookSet = book;
    
}

@end
