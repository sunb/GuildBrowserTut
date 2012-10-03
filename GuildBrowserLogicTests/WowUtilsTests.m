//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Tran Xuan Bach on 9/27/12.
//  Copyright (c) 2012 Charlie Fulton. All rights reserved.
//

#import "WowUtilsTests.h"
#import "WoWUtils.h"

@implementation WowUtilsTests

-(void)testCharacterClassNameLookup
{

    STAssertEqualObjects(@"Warrior",
                         [WoWUtils classFromCharacterType:1],
                         @"ClassType should be Warrior");

    STAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]],
                  nil);
    

    STAssertFalse([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],
                 nil);

}

- (void)testRaceTypeLookup
{
    STAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], nil);
    STAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], nil);
    STAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]],nil);

}

- (void)testQualityLookup
{
    STAssertEqualObjects(@"Grey", [WoWUtils qualityFromQualityType:1], nil);
    STAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]],nil);
}
@end
