//
//  LHWCity.m
//  Weather
//
//  Created by Pierre Binon on 2017-03-15.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "LHWCity.h"



@implementation LHWCity

- (instancetype)initWithCityName: (NSString *) cityName currentTemp: (NSInteger) temp andCurrentWeather: (NSString *) weather
{
    self = [super init];
    if (self) {
        _cityName = cityName;
        _currentTemperature = temp;
        _currentWeatherDescription = weather;
        _currentDate = [NSDate date];
    }
    return self;
}

@end
