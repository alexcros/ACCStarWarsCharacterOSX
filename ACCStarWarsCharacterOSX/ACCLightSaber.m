//
//  ACCLightSaber.m
//  ACCStarWarsCharacterOSX
//
//  Created by Alexandre Cros on 22/01/15.
//  Copyright (c) 2015 Alex Cros. All rights reserved.
//

#import "ACCLightSaber.h"

@implementation ACCLightSaber

//factory
+(instancetype) ACCLightSaberWithColorRed: (float) red
                                    green: (float) green
                                     blue: (float) blue {
    return [[self alloc] initWithRed:red
                               green:green
                                blue:blue];
}

// instance methods

+(instancetype) ACCLightSaberWithRed {
    
    return [[self alloc] initWithRedLightSaber];
}


+(instancetype) ACCLightSaberWithGreen{
    
    return [[self alloc] initWithGreenLightSaber];
}
+(instancetype) ACCLightSaberWithBlue{
    
    return [[self alloc] initWithBlueLightSaber];
}


+(instancetype) ACCLightSaberWithPurple {
    
    return [[self alloc] initWithPurpleLightSaber];
}


// init
-(instancetype) initWithRed: (float) red
                      green:(float) green
                       blue: (float) blue {
    
    if (self = [super init]) {
        
        _color = [NSColor colorWithRed:red
                                 green:green
                                  blue:blue
                                 alpha:1.0];
    }
    return self;
}

-(instancetype) initWithBlueLightSaber {
    
    return [self initWithRed: 0.0
                       green:0.0
                        blue:1.0];
}

//red
-(instancetype) initWithRedLightSaber {
    
    return [self initWithRed:1.0
                        green:0.0
                        blue:0.0];
}



//green
-(instancetype) initWithGreenLightSaber {
    
    return [self initWithRed:0.0
                       green:1.0
                        blue:0.0];
}



//purple
-(instancetype) initWithPurpleLightSaber {
    
    return [self initWithRed:1.0
                       green:0.0
                        blue:1.0];
}
#pragma mark - NSObject

-(BOOL)isEqual:(id)object{
    
    if ([object isKindOfClass:[self class]]) {
        
        // semos de la misma clase: comparamos prop.
        return [self.color isEqual:[object color]];
    }else{
        return NO;
    }
    
}

-(NSString *) description {
    
    return [NSString stringWithFormat:@" %@ %@ ", [self class], [self color]];
    
}

@end
