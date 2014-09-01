//
//  ViewController.h
//  BVRecorderTableViewDemo
//
//  Created by dongway on 14-9-1.
//  Copyright (c) 2014年 martin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <BVReorderTableView/BVReorderTableView.h>
@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,ReorderTableViewDelegate>
@property (weak, nonatomic) IBOutlet BVReorderTableView *tableview;

@end
