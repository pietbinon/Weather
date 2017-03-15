//
//  LHWCity.h
//  Weather
//
//  Created by Pierre Binon on 2017-03-15.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface LHWCity : NSObject

@property (nonatomic) NSInteger currentTemperature;
@property (nonatomic) NSString *currentWeatherDescription;
@property (nonatomic) NSString *cityName;
@property (nonatomic) NSDate *currentDate;

- (instancetype)initWithCityName: (NSString *) cityName currentTemp: (NSInteger) temp andCurrentWeather: (NSString *) weather;

@end
