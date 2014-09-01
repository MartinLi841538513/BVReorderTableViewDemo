//
//  ViewController.m
//  BVRecorderTableViewDemo
//
//  Created by dongway on 14-9-1.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import "ViewController.h"
#import "TestCell.h"
@interface ViewController ()
{
    NSMutableArray *datas;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    datas = [[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)saveObjectAndInsertBlankRowAtIndexPath:(NSIndexPath *)indexPath{
    id data = [datas objectAtIndex:indexPath.row];
    [datas replaceObjectAtIndex:indexPath.row withObject:@"martin"];
    return data;
}

- (void)moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath{
    id object = [datas objectAtIndex:fromIndexPath.row];
    [datas removeObjectAtIndex:fromIndexPath.row];
    [datas insertObject:object atIndex:toIndexPath.row];
}

- (void)finishReorderingWithObject:(id)object atIndexPath:(NSIndexPath *)indexPath{
    [datas replaceObjectAtIndex:indexPath.row withObject:object];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return datas.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TestCell"];
    NSInteger row = indexPath.row;
    NSString *data = [datas objectAtIndex:row];
    cell.name.text = data;
    return cell;
}
@end
