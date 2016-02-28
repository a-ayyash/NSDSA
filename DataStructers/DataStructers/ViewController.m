//
//  ViewController.m
//  DataStructers
//
//  Created by ayyash on 03/01/16.
//  Copyright © 2016 ayyash. All rights reserved.
//

#import "ViewController.h"
#import "NSDSA/NSDSA.h"

@interface ViewController () {
    NSDSA* dsa;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    id X = @101;
    id Y = @10;
    NSLog(@"%d", X==Y);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
