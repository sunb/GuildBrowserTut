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

- (void) testCharacterClassNameLookup{
    STAssertEqualObjects(@"Warrior", [WoWUtils classFromCharacterType:1], @"Class Type Should Be Warrior");
    STAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]], nil);
    STAssertFalse([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]], nil);
}

@end
