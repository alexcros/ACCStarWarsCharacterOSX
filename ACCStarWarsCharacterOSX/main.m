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
        
        // create a instance... example: ACCStarWarsCharacter *anakin = [[ACCStarWarsCharacter new]; or alloc]init
        //ACCStarWarsCharacter *anakin = [[ACCStarWarsCharacter alloc] init];
        /*ACCStarWarsCharacter *anakin = [[ACCStarWarsCharacter alloc] initWithFirstName:@"Anakin"
         lastname:@"Skywalker"
         alias:@"Darth Vader"];
         */
        // creado con constructor en .m, nos ahorramos el alloc init y []
        
        // sables
        ACCLightSaber *sableVerde = [ACCLightSaber ACCLightSaberWithGreen];
        ACCLightSaber *sableRed = [ACCLightSaber ACCLightSaberWithRed];
        ACCLightSaber *sableBlue = [ACCLightSaber ACCLightSaberWithBlue];
        ACCLightSaber *sablePurple = [ACCLightSaber ACCLightSaberWithPurple];
        ACCLightSaber *sableCopy = sableRed;
        
        if ([sableRed isEqual:sablePurple] == YES) {
            
            NSLog(@" Lo sables son iguales " );
            
            
        } else {
            
            NSLog(@" Los sables son distintos");
           // NSLog(@"Description: %@ ",[sableVerde description]);
            //NSLog(@"Description: %@ ",[sableRed description]);
        }
        NSLog(@"[sableVerde isEqual: sablered] = %@", ([sableVerde isEqual:sableRed] ? @"YES" : @"NO"));
        NSLog(@"[sableBlue isEqual: sablePurple] = %@", ([sableBlue isEqual:sablePurple] ? @"YES" : @"NO"));
        NSLog(@"[sableRed isEqual: sableCopy] = %@", ([sableRed isEqual:sableCopy] ? @"YES" : @"NO"));
        
        // Jedis
        ACCJedi *dooku = [[ACCJedi alloc]initWithJediMasterNamed:@"Dooku"];
        ACCJedi *quiGonJin = [[ACCJedi alloc] initWithAlias:@"Qui-Gon Jin"
                                             midichlorians:1000
                                                lightSaber:sableVerde
                                                 padawanOf:dooku];
        ACCJedi *obiWanKenobi = [[ACCJedi alloc]initWithAlias:@"Obi-Wan Kenobi"
                                               midichlorians:100
                                                  lightSaber:sableBlue
                                                   padawanOf:quiGonJin];
        ACCJedi *yoda = [[ACCJedi alloc]initWithAlias:@"Minch Yoda"
                                       midichlorians:1000
                                          lightSaber:sableVerde
                                           padawanOf:nil];
        ACCJedi *luke = [[ACCJedi alloc]initWithAlias:@"Luke Skywalker"
                                       midichlorians:100
                                          lightSaber:sableVerde
                                           padawanOf:obiWanKenobi];
        ACCJedi *lukeClone = luke;
        
        if ([quiGonJin isEqualTo:luke] == YES) {
            
            NSLog(@" Los jedis son iguales");
                  
        } else {
            
            NSLog(@" Los jedis son diferentes");
        }
        NSLog(@"[luke isEqual: lukeClone] = %@", ([luke isEqual: lukeClone] ? @"YES" : @"NO"));

 
        // Personajes StarWars
        ACCStarWarsCharacterOSX *han = [ACCStarWarsCharacterOSX starWarsCharacterWithAlias:@"Han Solo"];
        ACCStarWarsCharacterOSX *jabba = [ACCStarWarsCharacterOSX starWarsCharacterWithAlias:@"Jabba The Hut"];
        ACCStarWarsCharacterOSX *jabba2 = [ACCStarWarsCharacterOSX starWarsCharacterWithAlias:@"Jabba The Hut"];
        
        if ([han isEqual:jabba] == YES) {
            
            NSLog(@" Los personajes son iguales");
            
        } else {
            
            NSLog(@" Los personajes son diferentes");
           // NSLog(@"Description: %@ ",[han description]);
           // NSLog(@"Description: %@ ",[jabba description]);
            
        }
        NSLog(@"[jabba isEqual: jabba2] = %@", ([jabba isEqual: jabba2] ? @"YES" : @"NO"));
    
    return 0;

    }
    
}