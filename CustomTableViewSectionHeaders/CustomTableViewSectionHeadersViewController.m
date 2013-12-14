//
//  CustomTableViewSectionHeadersViewController.m
//  CustomTableViewSectionHeaders
//
//  Created by Josh Earl on 12/11/13.
//  Copyright (c) 2013 CodeBleep. All rights reserved.
//

#import "CustomTableViewSectionHeadersViewController.h"

@interface CustomTableViewSectionHeadersViewController ()

@end

@implementation CustomTableViewSectionHeadersViewController {
    NSArray *items;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	items = [NSArray arrayWithObjects:@"Item 1", @"Item 2", @"Item 3", @"Item 4", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [items count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"My Header";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"ItemCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [items objectAtIndex:indexPath.row];
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *headerView;
    
    headerView = [[UIView alloc] init];
    
    [headerView setBackgroundColor:[UIColor blackColor]];

    return headerView;
}

@end
