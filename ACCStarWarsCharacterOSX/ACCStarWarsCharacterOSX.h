//
//  ACCStarWarsCharacterOSX.h
//  ACCStarWarsCharacterOSX
//
//  Created by Alexandre Cros on 21/01/15.
//  Copyright (c) 2015 Alex Cros. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ACCStarWarsCharacterOSX : NSObject

// property
@property NSString *alias;

// constructores
+(id) starWarsCharacterWithAlias:(NSString *) alias;

// inicializador designado
-(id) initWithAlias: (NSString *) alias;





@end