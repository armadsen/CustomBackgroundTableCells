//
//  ViewController.m
//  CustomBackground
//
//  Created by Andrew Madsen on 3/16/15.
//  Copyright (c) 2015 Open Reel Software. All rights reserved.
//

#import "ViewController.h"
#import "CustomBackgroundTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	[self.tableView registerClass:[CustomBackgroundTableViewCell class] forCellReuseIdentifier:NSStringFromClass([CustomBackgroundTableViewCell class])];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([CustomBackgroundTableViewCell class])];
	cell.imageView.image = [UIImage imageNamed:@"woz"];
	cell.textLabel.text = @"Steve";
	return cell;
}

@end
