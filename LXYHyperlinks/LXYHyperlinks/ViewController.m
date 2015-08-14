//
//  ViewController.m
//  LXYHyperlinks
//
//  Created by 宣佚 on 15/8/14.
//  Copyright (c) 2015年 Liuxuanyi. All rights reserved.
//

#import "ViewController.h"
#import "LXYHyperlinksLabel.h"
#import "LXYHyperlinksButton.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet LXYHyperlinksLabel *linksLabel;
@property (nonatomic, weak) IBOutlet LXYHyperlinksButton *linksBut;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.linksBut setColor:self.linksBut.tintColor];
    [self.linksLabel setColor:[UIColor brownColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
