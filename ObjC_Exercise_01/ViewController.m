//
//  ViewController.m
//  ObjC_Exercise_01
//
//  Created by Long Hoang on 3/31/16.
//  Copyright © 2016 Macbook. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)askQuestion:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Question" message:@"2 + 2 * 2 = 8?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *yes = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UIAlertController *result = [UIAlertController alertControllerWithTitle:@"Answer" message:@"That is incorrect" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleCancel handler:nil];
        [result addAction:ok];
        [self presentViewController:result animated:YES completion:nil];
        
        
    }];
    
    UIAlertAction *no = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        UIAlertController *result = [UIAlertController alertControllerWithTitle:@"Answer" message:@"That is correct!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleCancel handler:nil];
        [result addAction:ok];
        [self presentViewController:result animated:YES completion:nil];
    }];
    [alert addAction:yes];
    [alert addAction:no];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
