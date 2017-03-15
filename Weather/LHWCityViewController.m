//
//  LHWCityViewController.m
//  Weather
//
//  Created by Pierre Binon on 2017-03-15.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "LHWCityViewController.h"
#import "LHWDetailedViewController.h"



@interface LHWCityViewController ()

@end




@implementation LHWCityViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    UILabel *outputLabel = [[UILabel alloc] initWithFrame: CGRectMake(30, 200, 100, 15)];
    NSString *tempString = [NSString stringWithFormat: @"%@ Date: %@", self.data.cityName, self.data.currentDate];
    
    outputLabel.text = tempString;
    [outputLabel sizeToFit];
    outputLabel.center = self.view.center;
    [self.view addSubview: outputLabel];
    
    [self setupButton];
}


//Override setter method from the data property
- (void) setData: (LHWCity *) data {
    
    _data = data;
    self.title = self.data.cityName;
}


- (void) showWeatherDetails: (LHWCity *) data {
    
    // init the dvc
    LHWDetailedViewController *detail = [[LHWDetailedViewController alloc] init];
    
    // set the data property on the dvc, to the current data
    detail.city = self.data;
    // call pushViewController on the navigationcontroller
    [self.navigationController pushViewController: detail animated: YES];
}


- (void) setupButton {
    UIButton *button = [[UIButton alloc] initWithFrame: CGRectMake(110, 450, 100, 10)];
    [button setTitle: @"Click to see more details" forState: UIControlStateNormal];
    [button addTarget: self action: @selector (showWeatherDetails:) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: button];
    button.backgroundColor = [UIColor blueColor];
    [button sizeToFit];
    //button.center = self.view.center;
}

@end
