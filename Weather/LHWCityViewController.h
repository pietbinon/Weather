//
//  LHWCityViewController.h
//  Weather
//
//  Created by Pierre Binon on 2017-03-15.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LHWCity.h"



@interface LHWCityViewController : UIViewController

@property (nonatomic) LHWCity *data;

- (void) showWeatherDetails: (LHWCity *) data;
- (void) setupButton;

@end
