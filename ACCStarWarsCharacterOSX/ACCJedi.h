//
//  ACCJedi.h
//  ACCStarWarsCharacterOSX
//
//  Created by Alexandre Cros on 21/01/15.
//  Copyright (c) 2015 Alex Cros. All rights reserved.
//

#import "ACCStarWarsCharacterOSX.h"
#import "ACCLightSaber.h"

@interface ACCJedi : ACCStarWarsCharacterOSX
@property NSUInteger midichlorians;
@property ACCLightSaber *lighSaber;
@property ACCJedi *padawanOf;

// designated
-(id) initWithAlias:(NSString*) alias
     midichlorians:(NSUInteger) midichlorians
        lightSaber:(ACCLightSaber*)lightSaber
         padawanOf:(ACCJedi*) master;

-(id) initWithName:(NSString*) alias;

-(id) initWithJediMasterNamed:(NSString*) alias;

-(NSString*)unsheathe;


@end
