//
//  ACCJedi.m
//  ACCStarWarsCharacterOSX
//
//  Created by Alexandre Cros on 21/01/15.
//  Copyright (c) 2015 Alex Cros. All rights reserved.
//

#import "ACCJedi.h"
#import "ACCStarWarsCharacterOSX.h"

@implementation ACCJedi

// init
-(id) initWithAlias:(NSString*) alias
     midichlorians:(NSUInteger) midichlorians
        lightSaber:(ACCLightSaber*)lightSaber
         padawanOf:(ACCJedi*) master{
    
    if (self = [super initWithAlias:alias]) {
        _midichlorians = midichlorians;
        _padawanOf = master;
        _lighSaber = lightSaber;
    }
    return self;
}

-(id) initWithName:(NSString*) alias{
    
    return [self initWithAlias:alias
                midichlorians:100
                   lightSaber:[ACCLightSaber ACCLightSaberWithBlue]
                    padawanOf:nil];
}

-(id) initWithJediMasterNamed:(NSString*) alias{
    return [self initWithAlias:alias
                midichlorians:1000
                   lightSaber:[ACCLightSaber ACCLightSaberWithGreen]
                    padawanOf:nil];
}

-(NSString*)unsheathe{
    return @"█||||||(•)█Ξ█████████████████████";
}

#pragma mark - NSObject
-(NSString *) description{
    
    return [NSString stringWithFormat:@"<%@: %@ (%lu) - %@>", [self class], [self alias], (unsigned long)[self midichlorians], [self padawanOf]];
}

-(BOOL)isEqual:(id)object{
    
    if (self == object) {
        return YES;
    }
    
    if ([object isKindOfClass:[self class]]) {
        
        // comparo propiedades?
        return [[self proxyForComparison] isEqual: [object proxyForComparison]];
    }else{
        return NO;
    }
}

-(NSString *) proxyForComparison{
    return [NSString stringWithFormat:@"%@ %@ %lu %@", [self alias], [self padawanOf], [self midichlorians],[self lighSaber] ];
}

@end