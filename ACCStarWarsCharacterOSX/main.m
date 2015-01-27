//
//  main.m
//  ACCStarWarsCharacterOSX
//
//  Created by Alexandre Cros on 21/01/15.
//  Copyright (c) 2015 Alex Cros. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ACCLightSaber.h"
#import "ACCJedi.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // sable
        ACCLightSaber *sableGreen = [ACCLightSaber ACCLightSaberWithGreen];
        ACCLightSaber *sableRed = [ACCLightSaber ACCLightSaberWithRed];
        ACCLightSaber *sableBlue = [ACCLightSaber ACCLightSaberWithBlue];
        ACCLightSaber *sablePurple = [ACCLightSaber ACCLightSaberWithPurple];
        ACCLightSaber *sableCopy = sableRed;
        
        // is equal?
        if ([sableRed isEqual:sablePurple] == YES) {
            
            NSLog(@"Equal");
            
        } else {
            
            NSLog(@"Different");
           // NSLog(@"Description: %@ ",[sableGreen description]);
           
        }
        NSLog(@"[sableGreen isEqual: sablered] = %@", ([sableGreen isEqual:sableRed] ? @"YES" : @"NO"));
        NSLog(@"[sableBlue isEqual: sablePurple] = %@", ([sableBlue isEqual:sablePurple] ? @"YES" : @"NO"));
        NSLog(@"[sableRed isEqual: sableCopy] = %@", ([sableRed isEqual:sableCopy] ? @"YES" : @"NO"));
        
        // Jedis
        ACCJedi *dooku = [[ACCJedi alloc]initWithJediMasterNamed:@"Dooku"];
        ACCJedi *quiGonJin = [[ACCJedi alloc] initWithAlias:@"Qui-Gon Jin"
                                              midichlorians:1000
                                                 lightSaber:sableGreen
                                                  padawanOf:dooku];
        
        ACCJedi *obiWanKenobi = [[ACCJedi alloc]initWithAlias:@"Obi-Wan Kenobi"
                                                midichlorians:100
                                                   lightSaber:sableBlue
                                                    padawanOf:quiGonJin];
        
        ACCJedi *yoda = [[ACCJedi alloc]initWithAlias:@"Minch Yoda"
                                        midichlorians:1000
                                           lightSaber:sableGreen
                                            padawanOf:nil];
        
        ACCJedi *luke = [[ACCJedi alloc]initWithAlias:@"Luke Skywalker"
                                        midichlorians:100
                                           lightSaber:sableGreen
                                            padawanOf:obiWanKenobi];
        ACCJedi *lukeClone = luke;
        
        // unsheathe
        NSLog(@"Yoda /n %@", yoda.unsheathe);
        
        if ([quiGonJin isEqualTo:luke] == YES) {
            
            NSLog(@"Same Jedi");
                  
        } else {
            
            NSLog(@"Different Jedi");
        }
        NSLog(@"[luke isEqual: lukeClone] = %@", ([luke isEqual: lukeClone] ? @"YES" : @"NO"));

 
        // StarWars Character
        ACCStarWarsCharacterOSX *han = [ACCStarWarsCharacterOSX starWarsCharacterWithAlias:@"Han Solo"];
        ACCStarWarsCharacterOSX *jabba = [ACCStarWarsCharacterOSX starWarsCharacterWithAlias:@"Jabba The Hut"];
        ACCStarWarsCharacterOSX *jabba2 = [ACCStarWarsCharacterOSX starWarsCharacterWithAlias:@"Jabba The Hut"];
        
        if ([han isEqual:jabba] == YES) {
            
            NSLog(@"Same Star Wars Character");
            
        } else {
            
            NSLog(@"Different characters");
           // NSLog(@"Description: %@ ",[han description]);
            
        }
        
        NSLog(@"[jabba isEqual: jabba2] = %@", ([jabba isEqual: jabba2] ? @"YES" : @"NO"));
    
    return 0;

    }
    
}