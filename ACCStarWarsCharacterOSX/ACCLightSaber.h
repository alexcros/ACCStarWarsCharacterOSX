//
//  ACCLightSaber.h
//  ACCStarWarsCharacterOSX
//
//  Created by Alexandre Cros on 22/01/15.
//  Copyright (c) 2015 Alex Cros. All rights reserved.
//

#import <Foundation/Foundation.h>
@import AppKit;

@interface ACCLightSaber : NSObject

@property NSColor * color;

// factory alloc
+(instancetype) ACCLightSaberWithColorRed: (float) red
                                    green: (float) green
                                     blue: (float) blue;

+(instancetype) ACCLightSaberWithRed;

+(instancetype) ACCLightSaberWithGreen;

+(instancetype) ACCLightSaberWithBlue;

+(instancetype) ACCLightSaberWithPurple;


//designado

-(id) initWithRed: (float) red
                      green:(float) green
                       blue: (float) blue;

// conveniencia

//blue
-(id) initWithBlueLightSaber;

//red
-(id) initWithRedLightSaber;

//green
-(id) initWithGreenLightSaber;

//purple
-(id) initWithPurpleLightSaber;


@end