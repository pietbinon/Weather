//
//  LHWDetailedViewController.m
//  Weather
//
//  Created by Pierre Binon on 2017-03-15.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "LHWDetailedViewController.h"



@interface LHWDetailedViewController ()

@end



@implementation LHWDetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    UILabel *outputLabel = [[UILabel alloc] initWithFrame: CGRectMake(100, 100, 100, 100)];
    NSString *tempString = [NSString stringWithFormat: @"%@: %ld degrees - Weather: %@", self.city.cityName, (long)self.city.currentTemperature, self.city.currentWeatherDescription];
    
    outputLabel.text = tempString;
    [outputLabel sizeToFit];
    outputLabel.center = self.view.center;
    [self.view addSubview: outputLabel];
    
}

@end
