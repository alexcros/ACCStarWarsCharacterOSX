//
//  ACCStarWarsCharacterOSX.m
//  ACCStarWarsCharacterOSX
//
//  Created by Alexandre Cros on 21/01/15.
//  Copyright (c) 2015 Alex Cros. All rights reserved.
//

#import "ACCStarWarsCharacterOSX.h"

@implementation ACCStarWarsCharacterOSX

// build alloc init

+(id) starWarsCharacterWithAlias:(NSString *) alias {
    
    return [[self alloc] initWithAlias:alias];
}

// init method
-(id) initWithAlias: (NSString *) alias {
    
    if (self = [super init]) {
        
        _alias = alias;
    }
    return self;
}


// description

-(NSString *) description {
    
    return [NSString stringWithFormat:@"<%@ %@>", [self class], [self alias]];
    
}

-(BOOL)isEqual:(id)object{
    
    if ([object isKindOfClass:[self class]]) {
        
        // semos de la misma clase: comparamos prop.
        return [self.alias isEqual:[object alias]];
    }else{
        return NO;
    }
    
}

@end
