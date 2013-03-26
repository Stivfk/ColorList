//
//  ViewController.h
//  ColorList
//
//  Created by Steeve Fong on 3/25/13.
//  Copyright (c) 2013 Steeve Fong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController <NSURLConnectionDataDelegate, NSURLConnectionDelegate>
@property (strong, nonatomic) NSMutableData * myData;
@property (strong, nonatomic) NSURLConnection * myConnection;

- (void)fetchEntries;

@end
