//
//  ViewController.m
//  ColorList
//
//  Created by Steeve Fong on 3/25/13.
//  Copyright (c) 2013 Steeve Fong. All rights reserved.
//

#import "ViewController.h"
#import "Constants.h"

@implementation ViewController
@synthesize myData, myConnection;

-(void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"di load");
    myData = [[NSMutableData alloc] init];
}

-(void)viewDidAppear:(BOOL)animated
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    
    [self fetchEntries];    
}

-(void)fetchEntries
{
    NSURL *url = [NSURL URLWithString:COLORLISTURL];
    
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    
    myConnection = [[NSURLConnection alloc] initWithRequest:req delegate:self startImmediately:YES];
    
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"my %@", data);

    [myData appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    myConnection = nil;
    
    NSLog(@"%@", myData);
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    NSLog(@"%@", error);
}

@end
