//
//  ViewController.m
//  JokeGenerator
//
//  Created by SBT on 01/05/2018.
//  Copyright © 2018 SBT. All rights reserved.
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


- (IBAction)JokeButton:(id)sender {
    NSString *fileContents = [[NSBundle mainBundle] pathForResource:@"JokeList" ofType:@"plist"];
    NSDictionary *wordDIC =[[NSDictionary alloc] initWithContentsOfFile:fileContents];
    NSMutableArray *items =[wordDIC valueForKey:@"Jokes"];
    int RandomJoke = arc4random() % [items count];
    NSString *Word = [items objectAtIndex:RandomJoke];
    
    [self.Label setText:[[NSString alloc] initWithFormat:@"%@", Word]];
}
@end
