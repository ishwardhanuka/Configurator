//
//  InteriorViewController.m
//  sq
//
//  Created by Tegan Tang on 7/19/13.
//  Copyright (c) 2013 LeadMotion Labs. All rights reserved.
//

#import "InteriorViewController.h"

@interface InteriorViewController ()

@end

@implementation InteriorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)setCarName:(NSString*)carName :(NSString*)viewNo
{
    name = carName;
    view = viewNo;
}

- (void)setInitialImages
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *intereiorFiles = [defaults objectForKey:@"interiorFiles"];
    for(NSString *fileName in intereiorFiles)
    {
        if ([fileName rangeOfString:@"Background"].location != NSNotFound)
        {
            [self.imvBackground setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Carbon Fibre"].location != NSNotFound)
        {
            [self.imvCarbonFibre setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Carbon Pack"].location != NSNotFound)
        {
            [self.imvCarbonPack setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Carpet"].location != NSNotFound)
        {
            [self.imvCarpet setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Door"].location != NSNotFound)
        {
            [self.imvDoor setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Facia"].location != NSNotFound)
        {
            [self.imvFacia setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Outer Stitch"].location != NSNotFound)
        {
            [self.imvOuterStitch setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Lower Stitch"].location != NSNotFound)
        {
            [self.imvLowerStitch setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Lower Env Stitch"].location != NSNotFound)
        {
            [self.imvLowerEnvStitch setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Lower Env"].location != NSNotFound)
        {
            [self.imvLowerEnv setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Lower"].location != NSNotFound)
        {
            [self.imvLower setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Piano"].location != NSNotFound)
        {
            [self.imvPiano setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Seat Inner Stitch"].location != NSNotFound)
        {
            [self.imvSeatInnerStitch setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Seat Inner"].location != NSNotFound)
        {
            [self.imvSeatInner setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Seat Outer"].location != NSNotFound)
        {
            [self.imvSeatOuter setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Upper IP"].location != NSNotFound)
        {
            [self.imvUpperIP setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Upper Stitch"].location != NSNotFound)
        {
            [self.imvUpperStitch setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Upper Env Stitch"].location != NSNotFound)
        {
            [self.imvUpperEnvStitch setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Upper Env"].location != NSNotFound)
        {
            [self.imvUpperEnv setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Upper"].location != NSNotFound)
        {
            [self.imvUpper setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
        }
        else if ([fileName rangeOfString:@"Wheel"].location != NSNotFound)
        {
            [self.imvWheel setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
            //string = @"Wheel";
        }
        //v8
        else if ([fileName rangeOfString:@"Base"].location != NSNotFound)
        {
            [self.imvBase setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
            //string = @"Base";
        }
        //van
        else if ([fileName rangeOfString:@"Gearshift Paddles"].location != NSNotFound)
        {
            [self.imvGearshiftPaddles setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
            //string = @"Gearshift Paddles";
        }
        else if ([fileName rangeOfString:@"Hardware Pack"].location != NSNotFound)
        {
            [self.imvHardwarePack setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
            //string = @"Hardware Pack";
        }
        else if ([fileName rangeOfString:@"Headlining Outer"].location != NSNotFound)
        {
            [self.imvHeadliningOuter setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
            //string = @"Headlining Outer";
        }
        else if ([fileName rangeOfString:@"Jewellery Pack"].location != NSNotFound)
        {
            [self.imvJewelleryPack setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
            //string = @"Jewellery Pack";
        }
        else if ([fileName rangeOfString:@"Rotaries"].location != NSNotFound)
        {
            [self.imvRotaries setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
            //string = @"Rotaries";
        }
        else if ([fileName rangeOfString:@"Seat Stitch"].location != NSNotFound)
        {
            [self.imvSeatStitch setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
            //string = @"Seat Stitch";
        }
        else if ([fileName rangeOfString:@"Seat Accent Stitch"].location != NSNotFound)
        {
            [self.imvSeatAccentStitch setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
            //string = @"Seat Accent Stitch";
        }
        else if ([fileName rangeOfString:@"Seat Accent"].location != NSNotFound)
        {
            [self.imvSeatAccent setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
            //string = @"Seat Accent";
        }
        else if ([fileName rangeOfString:@"Seat"].location != NSNotFound)
        {
            [self.imvSeat setImage:[UIImage imageNamed:[self setStringForViews:fileName]]];
            //string = @"Seat";
        }
    }
}

-(NSString*)setStringForViews:(NSString*)fileName{
    NSArray* subArray = [fileName componentsSeparatedByString:@"_"];
    NSString* newFileName = @"";
    NSString* newViewString = @"";
    if([viewString isEqualToString:@"_2"])
        newViewString = @"2_";
    for(int i=0;i<[subArray count];i++){
        if(![subArray[i] isEqualToString:@"2"]){
            newFileName = [newFileName stringByAppendingFormat:@"%@_",subArray[i]];
            if(i==1)
                newFileName = [newFileName stringByAppendingString:newViewString];
        }
    }
    newFileName = [newFileName substringToIndex:[newFileName length]-1];
    return newFileName;
}

- (void)setFirstTableDataSource:(NSArray*)folderList
{
    if([name isEqualToString:@"RapideS"])
        folderList = [NSArray arrayWithObjects:@"Upper", @"Lower", @"Upper IP", @"Upper Stitch", @"Lower Stitch", @"Seat Inner", @"Seat Outer", @"Outer Stitch", @"Door Inserts", @"Carbon Fibre Pack", @"Piano Black Pack", @"Facia", @"Steering Wheel", @"Carpet", nil];
    /*
     UPPER
     LOWER
     UPPER IP
     UPPER STITCH
     LOWER STITCH
     SEAT OUTER
     OUTER STITCH
     DOOR
     CARBON FIBRE
     PIANO BLACK PACK
     FACIA
     WHEEL
     CARPET
     */
    
    else if([name isEqualToString:@"v8"])
        folderList = [NSArray arrayWithObjects:@"Base", @"Carpet", @"Facia", @"Lower Env Stitch", @"Lower Env", @"Seat Inner", @"Seat Inner Stitch", @"Seat Outer", @"Wheel", @"Upper", @"Upper Stitch", nil];
    
    else if([name isEqualToString:@"db9"])
        folderList = [NSArray arrayWithObjects:@"Base", @"Carbon Pack", @"Carpet", @"Facia", @"Lower Env", @"Lower Env Stitch", @"Wheel", @"Upper Stitch", @"Upper Env", @"Upper Env Stitch", @"Upper IP", nil];
    
    //van
    //folderList = [NSArray arrayWithObjects:@"Base", @"Carpet", @"Door", @"Facia", @"Gearshift Paddles", @"Hardware Pack", @"Headlining Outer", @"Jewellery Pack", @"Lower Env", @"Lower Env Stitch", @"Rotaries", @"Seat", @"Seat Accent", @"Seat Accent Stitch", @"Seat Stitch", @"Wheel", @"Upper Env", @"Upper Env Stitch", @"Upper IP", nil];
    
    arrayFirstTableView = [NSArray arrayWithArray:folderList];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [[NSUserDefaults standardUserDefaults] setObject:arrayFirstTableView forKey:@"interiorFolders"];
    [defaults synchronize];
    
    NSMutableArray *arrayFiles = [[NSMutableArray alloc] init];
    
    NSString * resourcePath = [[NSBundle mainBundle] resourcePath];
    NSLog(@"resourcePath : %@",resourcePath);
    
    NSArray * directoryContents = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:resourcePath error:nil];
    NSString* beginsWithRequirement;
    //NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
    NSPredicate* predicate;
    
    NSArray *subArray;
    
    for(NSString *folder in folderList)
    {
        if([folder isEqualToString:@"Background"])
        {
            [self.imvBackground setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_%@_Base",name,viewString, view];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvBackground setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Carbon Fibre Pack"])
        {
            [self.imvCarbonFibre setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Carbon Fibre Pack_Standard",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvCarbonFibre setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Carbon Pack"])
        {
            [self.imvCarbonPack setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Carbon Pack_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvCarbonPack setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Carpet"])
        {
            [self.imvCarpet setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Carpet_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvCarpet setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Door Inserts"])
        {
            [self.imvDoor setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Door Inserts_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvDoor setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Facia"])
        {
            [self.imvFacia setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Facia_Piano Black",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvFacia setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Lower"])
        {
            [self.imvLower setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Lower_Obsidian Black",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvLower setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
            [defaults setObject:@"int_Obsidian Black.png" forKey:@"LowerSelection"];
        }
        else if([folder isEqualToString:@"Piano Black Pack"])
        {
            [self.imvPiano setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Piano Black Pack_Standard",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvPiano setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Seat Inner"])
        {
            [self.imvSeatInner setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Seat Inner_Obsidian Black",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvSeatInner setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Seat Outer"])
        {
            [self.imvSeatOuter setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Seat Outer_Obsidian Black",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvSeatOuter setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Upper"])
        {
            [self.imvUpper setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Upper_Obsidian Black",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvUpper setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
            [defaults setObject:@"int_Obsidian Black.png" forKey:@"UpperSelection"];
        }
        else if([folder isEqualToString:@"Upper Env"])
        {
            [self.imvUpperEnv setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Upper Env_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvUpperEnv setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Upper Env Stitch"])
        {
            [self.imvUpperEnvStitch setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Upper Env Stitch_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvUpperEnvStitch setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Upper IP"])
        {
            [self.imvUpperIP setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Upper IP_Obsidian Black",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvUpperIP setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Steering Wheel"])
        {
            [self.imvWheel setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Steering Wheel_Obsidian Black",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvWheel setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        //v8
        else if([folder isEqualToString:@"Base"])
        {
            [self.imvBase setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Base_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvBase setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Lower Env Stitch"])
        {
            [self.imvLowerEnvStitch setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Lower Env Stitch_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvLowerEnvStitch setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Seat Inner Stitch"])
        {
            [self.imvSeatInnerStitch setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Seat Inner Stitch_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvSeatInnerStitch setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Upper Stitch"])
        {
            [self.imvUpperStitch setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Upper Stitch_Coarse_Chancellor Red",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvUpperStitch setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Lower Env"])
        {
            [self.imvLowerEnv setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Lower Env_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvLowerEnv setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Lower Stitch"])
        {
            [self.imvLowerStitch setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Lower Stitch_Coarse_Chancellor Red",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvLowerStitch setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Outer Stitch"])
        {
            [self.imvOuterStitch setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Outer Stitch_Coarse_Chancellor Red",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvOuterStitch setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Gearshift Paddles"])
        {
            [self.imvGearshiftPaddles setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Gearshift Paddles_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvGearshiftPaddles setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Hardware Pack"])
        {
            [self.imvHardwarePack setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Hardware Pack_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvHardwarePack setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Headlining Outer"])
        {
            [self.imvHeadliningOuter setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Headlining Outer_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvHeadliningOuter setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Jewellery Pack"])
        {
            [self.imvJewelleryPack setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Jewellery Pack_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvJewelleryPack setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Rotaries"])
        {
            [self.imvRotaries setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Rotaries_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvRotaries setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Seat"])
        {
            [self.imvSeat setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Seat_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvSeat setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Seat Accent"])
        {
            [self.imvSeatAccent setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Seat Accent_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvSeatAccent setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Seat Accent Stitch"])
        {
            [self.imvSeatAccentStitch setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Seat Accent Stitch_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvSeatAccentStitch setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Seat Stitch"])
        {
            [self.imvSeatStitch setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Seat Stitch_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvSeatStitch setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Carbon Fibre"])
        {
            [self.imvCarbonFibre setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Carbon Fibre_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvCarbonFibre setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
        }
        else if([folder isEqualToString:@"Piano"])
        {
            [self.imvPiano setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_Piano_",name,viewString];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvPiano setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
        }
    }
    
    
    if([name isEqualToString:@"RapideS"]){
        [[NSUserDefaults standardUserDefaults] setObject:arrayFiles forKey:@"interiorFiles"];
        [defaults synchronize];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self setCarName:@"RapideS" :@"1"];
    viewString = @"";
    contemporary = [[NSMutableArray alloc] initWithObjects:@"AURORA BLUE", @"BITTER CHOCOLATE", @"BLUE HAZE", @"CHANCELLOR RED", @"CHESTNUT TAN", @"CREAM TRUFFLE", @"DEEP PURPLE", @"EIFEL GREEN", @"FALCON GREY", @"GALENA SILVER", @"ICE MOCHA", @"IVORY", @"LORDS RED", @"MADAGASCAR ORANGE", @"MOONSHADOW", @"PURE BLACK", @"SAHARA TAN", @"SANDSTORM", @"SPECTRAL BLUE", @"TUSCAN TAN", @"WINTER WHEAT",@"DUOTONE", @"WOOD PIANO BLACK", nil];
    
    fastTrack = [[NSMutableArray alloc] initWithObjects:@"BALTIC BLUE", @"CHAINMAIL GREY", @"DARK MOCHA", @"IRON ORE RED", @"OBSIDIAN BLACK", @"PARLIAMENT GREEN", @"PHANTOM GREY", @"SPICY RED", nil];
    
    [self setFirstTableDataSource:[[NSArray alloc]init]];
    
    self.tbvFirst.delegate = self;
    self.tbvFirst.dataSource = self;
    
    self.tbvSecond.delegate = self;
    self.tbvSecond.dataSource = self;
    
    isMenuHidden = NO;
    
    s1 = [[NSMutableArray alloc] init];
    s2 = [[NSMutableArray alloc] init];
}

-(void)getFileNames
{
    NSString * resourcePath = [[NSBundle mainBundle] resourcePath];
    fileNames = [[NSMutableArray alloc]init];
    s1 = [[NSMutableArray alloc]init];
    s2 = [[NSMutableArray alloc]init];
    
    NSError * error;
    NSArray * directoryContents = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:resourcePath error:&error];
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    NSString* colorName = @"";
    NSString* temp = @"";
    NSString* upperColor = [[[defaults stringForKey:@"UpperSelection"]componentsSeparatedByString:@"_"]lastObject];
    upperColor = [upperColor substringToIndex:[upperColor length]-4];
    NSString* lowerColor = [[[defaults stringForKey:@"LowerSelection"]componentsSeparatedByString:@"_"]lastObject];
    lowerColor = [lowerColor substringToIndex:[lowerColor length]-4];
    NSString* defaultColor = @"";
    for (NSString *s in directoryContents)
    {
        if([s hasPrefix:[NSString stringWithFormat:@"%@_int%@_%@_",name,viewString,selectedFolder]])
        {
            if(![s hasSuffix:@"thumb.jpg"])
            {
                if(!([selectedFolder isEqualToString:@"Facia"] || [selectedFolder isEqualToString:@"Carbon Fibre Pack"] || [selectedFolder isEqualToString:@"Piano Black Pack"]  || [selectedFolder isEqualToString:@"Piano Black Pack"] || [selectedFolder isEqualToString:@"Upper Stitch"] || [selectedFolder isEqualToString:@"Lower Stitch"] || [selectedFolder isEqualToString:@"Outer Stitch"])){
                    if([name isEqualToString:@"RapideS"] && ([selectedFolder isEqualToString:@"Upper IP"]||[selectedFolder isEqualToString:@"Seat Outer"]||[selectedFolder isEqualToString:@"Steering Wheel"]||[selectedFolder isEqualToString:@"Seat Inner"]||[selectedFolder isEqualToString:@"Door Inserts"])){
                        if([selectedFolder isEqualToString:@"Upper IP"]||[selectedFolder isEqualToString:@"Seat Outer"]||[selectedFolder isEqualToString:@"Steering Wheel"]||[selectedFolder isEqualToString:@"Seat Inner"])
                            defaultColor = @"Obsidian Black";
                        else if([selectedFolder isEqualToString:@"Door Inserts"])
                            defaultColor = @"Duotone";
                        temp = [[s componentsSeparatedByString:@"_"]lastObject];
                        temp = [temp substringToIndex:[temp length]-4];
                        if([temp isEqualToString:upperColor]||[temp isEqualToString:lowerColor]||[temp isEqualToString:defaultColor]||([selectedFolder isEqualToString:@"Door Inserts"]&&[temp isEqualToString:@"Wood Piano Black"])||([selectedFolder isEqualToString:@"Seat Inner"]&&[temp isEqualToString:@"Duotone"])){
                            colorName = temp;
                            if([contemporary containsObject:[colorName uppercaseString]])
                                [s1 addObject:s];
                            else if([fastTrack containsObject:[colorName uppercaseString]])
                                [s2 addObject:s];
                        }
                    }else{
                        colorName = [[s componentsSeparatedByString:@"_"]lastObject];
                        if([contemporary containsObject:[[colorName substringToIndex:[colorName length]-4] uppercaseString]])
                            [s1 addObject:s];
                        else if([fastTrack containsObject:[[colorName substringToIndex:[colorName length]-4]uppercaseString]])
                            [s2 addObject:s];
                    }
                }
                else{
                    if([selectedFolder isEqualToString:@"Upper Stitch"]){
                        [fileNames addObject:s];
                    }else
                        [fileNames addObject:s];
                }
            }
        }
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(!([selectedFolder isEqualToString:@"Facia"] || [selectedFolder isEqualToString:@"Carbon Fibre Pack"] || [selectedFolder isEqualToString:@"Piano Black Pack"]  || [selectedFolder isEqualToString:@"Piano Black Pack"] || [selectedFolder isEqualToString:@"Upper Stitch"] || [selectedFolder isEqualToString:@"Lower Stitch"] || [selectedFolder isEqualToString:@"Outer Stitch"]) && tableView.tag == 1)
    {
        switch (section) {
            case 0:
                return @"Contemporary";
            case 1:
                return @"Fast Track";
                
            default:
                return @"";
        }
    }
    else return @"";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    if(!([selectedFolder isEqualToString:@"Facia"] || [selectedFolder isEqualToString:@"Carbon Fibre Pack"] || [selectedFolder isEqualToString:@"Piano Black Pack"]  || [selectedFolder isEqualToString:@"Piano Black Pack"] || [selectedFolder isEqualToString:@"Upper Stitch"] || [selectedFolder isEqualToString:@"Lower Stitch"] || [selectedFolder isEqualToString:@"Outer Stitch"]) && tableView.tag == 1)
        return 2;
    else return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if(!([selectedFolder isEqualToString:@"Facia"] || [selectedFolder isEqualToString:@"Carbon Fibre Pack"] || [selectedFolder isEqualToString:@"Piano Black Pack"]  || [selectedFolder isEqualToString:@"Piano Black Pack"] || [selectedFolder isEqualToString:@"Upper Stitch"] || [selectedFolder isEqualToString:@"Lower Stitch"] || [selectedFolder isEqualToString:@"Outer Stitch"]) && tableView.tag == 1)
    {
        switch (section) {
            case 0:
                return [s1 count];
                break;
            case 1:
                return [s2 count];
                break;
            default:
                break;
        }
        
    }
    else if (tableView.tag == 0)
    {
        return [arrayFirstTableView count];
    }
    else
    {
        return [fileNames count];
    }
}

-(NSString*)contentsInParenthesis:(NSString *)str
{
    NSString *subString = nil;
    NSRange range1 = [str rangeOfString:@"_"];
    NSRange range2 = [str rangeOfString:@"."];
    if ((range1.length == 1) && (range2.length == 1) && (range2.location > range1.location))
    {
        NSRange range3;
        range3.location = range1.location+1;
        range3.length = (range2.location - range1.location)-1;
        subString = [str substringWithRange:range3];
    }
    return subString;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //NSMutableArray *intFile = [[defaults objectForKey:@"interiorFiles"] mutableCopy];
    
    if(!([selectedFolder isEqualToString:@"Facia"] || [selectedFolder isEqualToString:@"Carbon Fibre Pack"] || [selectedFolder isEqualToString:@"Piano Black Pack"]  || [selectedFolder isEqualToString:@"Piano Black Pack"] || [selectedFolder isEqualToString:@"Upper Stitch"] || [selectedFolder isEqualToString:@"Lower Stitch"] || [selectedFolder isEqualToString:@"Outer Stitch"]) && tableView.tag == 1)
    {
        NSString *fullString;
        
        switch (indexPath.section) {
            case 0:
                fullString = [s1 objectAtIndex:indexPath.row];
                break;
            case 1:
                fullString = [s2 objectAtIndex:indexPath.row];
                break;
            default:
                break;
        }
        
        NSString *result = [self contentsInParenthesis:fullString];
        NSArray *subStrings = [result componentsSeparatedByString:@"_"];
        int subStringSize = [subStrings count];
        if([subStrings[subStringSize-2] isEqualToString:@"Perforated"])
            cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", subStrings[subStringSize-2], subStrings[subStringSize-1]];
        else
            cell.textLabel.text = [NSString stringWithFormat:@"%@", subStrings[subStringSize-1]];
        [cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"Colour_%@_thumb.png",subStrings[subStringSize-1]]]];
    }
    else if (tableView.tag == 0)
    {
        cell.textLabel.text = [arrayFirstTableView objectAtIndex:indexPath.row];
    }
    else
    {
        if([selectedFolder isEqualToString:@"Upper Stitch"]||[selectedFolder isEqualToString:@"Lower Stitch"]||[selectedFolder isEqualToString:@"Outer Stitch"]||[selectedFolder isEqualToString:@"Outer Stitch"]){
            NSString* fullString = [fileNames objectAtIndex:indexPath.row];
            NSString *result = [self contentsInParenthesis:fullString];
            NSArray *subStrings = [result componentsSeparatedByString:@"_"];
            int subStringSize = sizeof(subStrings);
            cell.textLabel.text = [NSString stringWithFormat:@"%@ %@", subStrings[subStringSize-2], subStrings[subStringSize-1]];
            [cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"Colour_%@_thumb.png",subStrings[subStringSize-1]]]];
        }else{
            //cell.textLabel.text = [fileNames objectAtIndex:indexPath.row];
            
            NSString *fullString = [fileNames objectAtIndex:indexPath.row];
            
            NSString *result = [self contentsInParenthesis:fullString];
            NSArray *subStrings = [result componentsSeparatedByString:@"_"];
            for (int i = 0; i < [subStrings count]; i++)
            {
                cell.textLabel.text = [subStrings objectAtIndex:i];
            }
            if([selectedFolder isEqualToString:@"Facia"])
                [cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"Colour_%@_thumb.png",cell.textLabel.text]]];
            else{
            NSString *fileName = [[[fileNames objectAtIndex:indexPath.row]componentsSeparatedByString:@".png"]objectAtIndex:0];
            [cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_thumb.jpg",fileName]]];
            }
            /*
             if([intFile containsObject:[NSString stringWithFormat:@"%@.png",fileName]]){
             
             [cell setSelected:YES];
             }*/
        }
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    cell.backgroundColor = [UIColor clearColor];
    cell.backgroundView.backgroundColor = [UIColor clearColor];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(!([selectedFolder isEqualToString:@"Facia"] || [selectedFolder isEqualToString:@"Carbon Fibre Pack"] || [selectedFolder isEqualToString:@"Piano Black Pack"]  || [selectedFolder isEqualToString:@"Piano Black Pack"] || [selectedFolder isEqualToString:@"Upper Stitch"] || [selectedFolder isEqualToString:@"Lower Stitch"] || [selectedFolder isEqualToString:@"Outer Stitch"]) && tableView.tag == 1)
    {
        [defaults setObject:[self tableView:tableView titleForHeaderInSection:indexPath.section] forKey:[NSString stringWithFormat:@"%@ Category",selectedFolder]];
        
        NSString *fileName;
        
        switch (indexPath.section) {
            case 0:
                fileName = [s1 objectAtIndex:indexPath.row];
                break;
            case 1:
                fileName = [s2 objectAtIndex:indexPath.row];
                break;
            default:
                break;
        }
        NSLog(@"filename : %@",fileName);
        
        NSString *string = @"";
        
        if ([fileName rangeOfString:@"Background"].location != NSNotFound)
        {
            [self.imvBackground setImage:[UIImage imageNamed:fileName]];
            string = @"Background";
        }
        else if ([fileName rangeOfString:@"Carbon Fibre"].location != NSNotFound)
        {
            [self.imvCarbonFibre setImage:[UIImage imageNamed:fileName]];
            string = @"Carbon Fibre";
        }
        else if ([fileName rangeOfString:@"Carbon Pack"].location != NSNotFound)
        {
            [self.imvCarbonPack setImage:[UIImage imageNamed:fileName]];
            string = @"Carbon Pack";
        }
        else if ([fileName rangeOfString:@"Carpet"].location != NSNotFound)
        {
            [self.imvCarpet setImage:[UIImage imageNamed:fileName]];
            string = @"Carpet";
        }
        else if ([fileName rangeOfString:@"Door"].location != NSNotFound)
        {
            [self.imvDoor setImage:[UIImage imageNamed:fileName]];
            string = @"Door";
        }
        else if ([fileName rangeOfString:@"Facia"].location != NSNotFound)
        {
            [self.imvFacia setImage:[UIImage imageNamed:fileName]];
            string = @"Facia";
        }
        else if ([fileName rangeOfString:@"Outer Stitch"].location != NSNotFound)
        {
            [self.imvOuterStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Outer Stitch";
        }
        else if ([fileName rangeOfString:@"Lower Stitch"].location != NSNotFound)
        {
            [self.imvLowerStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Lower Stitch";
        }
        else if ([fileName rangeOfString:@"Lower Env Stitch"].location != NSNotFound)
        {
            [self.imvLowerEnvStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Lower Env Stitch";
        }
        else if ([fileName rangeOfString:@"Lower Env"].location != NSNotFound)
        {
            [self.imvLowerEnv setImage:[UIImage imageNamed:fileName]];
            string = @"Lower Env";
        }
        else if ([fileName rangeOfString:@"Lower"].location != NSNotFound)
        {
            [self.imvLower setImage:[UIImage imageNamed:fileName]];
            string = @"Lower";
            [defaults setObject:fileName forKey:@"LowerSelection"];
        }
        else if ([fileName rangeOfString:@"Piano"].location != NSNotFound)
        {
            [self.imvPiano setImage:[UIImage imageNamed:fileName]];
            string = @"Piano";
        }
        else if ([fileName rangeOfString:@"Seat Inner Stitch"].location != NSNotFound)
        {
            [self.imvSeatInnerStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Inner Stitch";
        }
        else if ([fileName rangeOfString:@"Seat Inner"].location != NSNotFound)
        {
            [self.imvSeatInner setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Inner";
        }
        else if ([fileName rangeOfString:@"Seat Outer"].location != NSNotFound)
        {
            [self.imvSeatOuter setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Outer";
        }
        else if ([fileName rangeOfString:@"Upper IP"].location != NSNotFound)
        {
            [self.imvUpperIP setImage:[UIImage imageNamed:fileName]];
            string = @"Upper IP";
        }
        else if ([fileName rangeOfString:@"Upper Stitch"].location != NSNotFound)
        {
            [self.imvUpperStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Upper Stitch";
        }
        else if ([fileName rangeOfString:@"Upper Env Stitch"].location != NSNotFound)
        {
            [self.imvUpperEnvStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Upper Env Stitch";
        }
        else if ([fileName rangeOfString:@"Upper Env"].location != NSNotFound)
        {
            [self.imvUpperEnv setImage:[UIImage imageNamed:fileName]];
            string = @"Upper Env";
        }
        else if ([fileName rangeOfString:@"Upper"].location != NSNotFound)
        {
            [self.imvUpper setImage:[UIImage imageNamed:fileName]];
            string = @"Upper";
            [defaults setObject:fileName forKey:@"UpperSelection"];
        }
        else if ([fileName rangeOfString:@"Wheel"].location != NSNotFound)
        {
            [self.imvWheel setImage:[UIImage imageNamed:fileName]];
            string = @"Wheel";
        }
        //v8
        else if ([fileName rangeOfString:@"Base"].location != NSNotFound)
        {
            [self.imvBase setImage:[UIImage imageNamed:fileName]];
            string = @"Base";
        }
        //van
        else if ([fileName rangeOfString:@"Gearshift Paddles"].location != NSNotFound)
        {
            [self.imvGearshiftPaddles setImage:[UIImage imageNamed:fileName]];
            string = @"Gearshift Paddles";
        }
        else if ([fileName rangeOfString:@"Hardware Pack"].location != NSNotFound)
        {
            [self.imvHardwarePack setImage:[UIImage imageNamed:fileName]];
            string = @"Hardware Pack";
        }
        else if ([fileName rangeOfString:@"Headlining Outer"].location != NSNotFound)
        {
            [self.imvHeadliningOuter setImage:[UIImage imageNamed:fileName]];
            string = @"Headlining Outer";
        }
        else if ([fileName rangeOfString:@"Jewellery Pack"].location != NSNotFound)
        {
            [self.imvJewelleryPack setImage:[UIImage imageNamed:fileName]];
            string = @"Jewellery Pack";
        }
        else if ([fileName rangeOfString:@"Rotaries"].location != NSNotFound)
        {
            [self.imvRotaries setImage:[UIImage imageNamed:fileName]];
            string = @"Rotaries";
        }
        else if ([fileName rangeOfString:@"Seat Stitch"].location != NSNotFound)
        {
            [self.imvSeatStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Stitch";
        }
        else if ([fileName rangeOfString:@"Seat Accent Stitch"].location != NSNotFound)
        {
            [self.imvSeatAccentStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Accent Stitch";
        }
        else if ([fileName rangeOfString:@"Seat Accent"].location != NSNotFound)
        {
            [self.imvSeatAccent setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Accent";
        }
        else if ([fileName rangeOfString:@"Seat"].location != NSNotFound)
        {
            [self.imvSeat setImage:[UIImage imageNamed:fileName]];
            string = @"Seat";
        }
        
        [self updateFileInUserDefault:string :fileName];
    }
    else if (tableView.tag == 0)
    {
        selectedFolder = [arrayFirstTableView objectAtIndex:indexPath.row];
        [self getFileNames];
        self.tbvSecond.hidden = NO;
        [self.tbvSecond reloadData];
    }
    else
    {
        //self.tbvSecond.hidden = YES;
        NSString *fileName = [fileNames objectAtIndex:indexPath.row];
        NSLog(@"filename : %@",fileName);
        
        NSString *string = @"";
        
        if ([fileName rangeOfString:@"Background"].location != NSNotFound)
        {
            [self.imvBackground setImage:[UIImage imageNamed:fileName]];
            string = @"Background";
        }
        else if ([fileName rangeOfString:@"Carbon Fibre"].location != NSNotFound)
        {
            [self.imvCarbonFibre setImage:[UIImage imageNamed:fileName]];
            string = @"Carbon Fibre";
        }
        else if ([fileName rangeOfString:@"Carbon Pack"].location != NSNotFound)
        {
            [self.imvCarbonPack setImage:[UIImage imageNamed:fileName]];
            string = @"Carbon Pack";
        }
        else if ([fileName rangeOfString:@"Carpet"].location != NSNotFound)
        {
            [self.imvCarpet setImage:[UIImage imageNamed:fileName]];
            string = @"Carpet";
        }
        else if ([fileName rangeOfString:@"Door"].location != NSNotFound)
        {
            [self.imvDoor setImage:[UIImage imageNamed:fileName]];
            string = @"Door";
        }
        else if ([fileName rangeOfString:@"Facia"].location != NSNotFound)
        {
            [self.imvFacia setImage:[UIImage imageNamed:fileName]];
            string = @"Facia";
        }
        else if ([fileName rangeOfString:@"Outer Stitch"].location != NSNotFound)
        {
            [self.imvOuterStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Outer Stitch";
        }
        else if ([fileName rangeOfString:@"Lower Stitch"].location != NSNotFound)
        {
            [self.imvLowerStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Lower Stitch";
        }
        else if ([fileName rangeOfString:@"Lower Env Stitch"].location != NSNotFound)
        {
            [self.imvLowerEnvStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Lower Env Stitch";
        }
        else if ([fileName rangeOfString:@"Lower Env"].location != NSNotFound)
        {
            [self.imvLowerEnv setImage:[UIImage imageNamed:fileName]];
            string = @"Lower Env";
        }
        else if ([fileName rangeOfString:@"Lower"].location != NSNotFound)
        {
            [self.imvLower setImage:[UIImage imageNamed:fileName]];
            string = @"Lower";
            [defaults setObject:fileName forKey:@"LowerSelection"];
        }
        else if ([fileName rangeOfString:@"Piano"].location != NSNotFound)
        {
            [self.imvPiano setImage:[UIImage imageNamed:fileName]];
            string = @"Piano";
        }
        else if ([fileName rangeOfString:@"Seat Inner Stitch"].location != NSNotFound)
        {
            [self.imvSeatInnerStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Inner Stitch";
        }
        else if ([fileName rangeOfString:@"Seat Inner"].location != NSNotFound)
        {
            [self.imvSeatInner setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Inner";
        }
        else if ([fileName rangeOfString:@"Seat Outer"].location != NSNotFound)
        {
            [self.imvSeatOuter setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Outer";
        }
        else if ([fileName rangeOfString:@"Upper IP"].location != NSNotFound)
        {
            [self.imvUpperIP setImage:[UIImage imageNamed:fileName]];
            string = @"Upper IP";
        }
        else if ([fileName rangeOfString:@"Upper Stitch"].location != NSNotFound)
        {
            [self.imvUpperStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Upper Stitch";
        }
        else if ([fileName rangeOfString:@"Upper Env Stitch"].location != NSNotFound)
        {
            [self.imvUpperEnvStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Upper Env Stitch";
        }
        else if ([fileName rangeOfString:@"Upper Env"].location != NSNotFound)
        {
            [self.imvUpperEnv setImage:[UIImage imageNamed:fileName]];
            string = @"Upper Env";
        }
        else if ([fileName rangeOfString:@"Upper"].location != NSNotFound)
        {
            [self.imvUpper setImage:[UIImage imageNamed:fileName]];
            string = @"Upper";
            [defaults setObject:fileName forKey:@"UpperSelection"];
        }
        else if ([fileName rangeOfString:@"Wheel"].location != NSNotFound)
        {
            [self.imvWheel setImage:[UIImage imageNamed:fileName]];
            string = @"Wheel";
        }
        //v8
        else if ([fileName rangeOfString:@"Base"].location != NSNotFound)
        {
            [self.imvBase setImage:[UIImage imageNamed:fileName]];
            string = @"Base";
        }
        //van
        else if ([fileName rangeOfString:@"Gearshift Paddles"].location != NSNotFound)
        {
            [self.imvGearshiftPaddles setImage:[UIImage imageNamed:fileName]];
            string = @"Gearshift Paddles";
        }
        else if ([fileName rangeOfString:@"Hardware Pack"].location != NSNotFound)
        {
            [self.imvHardwarePack setImage:[UIImage imageNamed:fileName]];
            string = @"Hardware Pack";
        }
        else if ([fileName rangeOfString:@"Headlining Outer"].location != NSNotFound)
        {
            [self.imvHeadliningOuter setImage:[UIImage imageNamed:fileName]];
            string = @"Headlining Outer";
        }
        else if ([fileName rangeOfString:@"Jewellery Pack"].location != NSNotFound)
        {
            [self.imvJewelleryPack setImage:[UIImage imageNamed:fileName]];
            string = @"Jewellery Pack";
        }
        else if ([fileName rangeOfString:@"Rotaries"].location != NSNotFound)
        {
            [self.imvRotaries setImage:[UIImage imageNamed:fileName]];
            string = @"Rotaries";
        }
        else if ([fileName rangeOfString:@"Seat Stitch"].location != NSNotFound)
        {
            [self.imvSeatStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Stitch";
        }
        else if ([fileName rangeOfString:@"Seat Accent Stitch"].location != NSNotFound)
        {
            [self.imvSeatAccentStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Accent Stitch";
        }
        else if ([fileName rangeOfString:@"Seat Accent"].location != NSNotFound)
        {
            [self.imvSeatAccent setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Accent";
        }
        else if ([fileName rangeOfString:@"Seat"].location != NSNotFound)
        {
            [self.imvSeat setImage:[UIImage imageNamed:fileName]];
            string = @"Seat";
        }
        
        [self updateFileInUserDefault:string :fileName];
        
    }
}
-(void)setImageFromDefaults
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *intFile = [[defaults objectForKey:@"interiorFiles"] mutableCopy];
    NSString *folderName;
    
    if (!intFile) intFile = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [intFile count]; i ++)
    {
        
        NSString *fileName = [intFile objectAtIndex:i];
        
        if([fileName rangeOfString:@"_2_"].location == NSNotFound && [viewString isEqualToString:@"_2"])
        {
            NSArray *split = [fileName componentsSeparatedByString:@"_"];
            NSMutableString *string = [[NSMutableString alloc]init];
            folderName = [split objectAtIndex:2];
            
            for(int i=0;i<[split count];i++)
            {
                [string appendString:[NSString stringWithFormat:@"%@_",[split objectAtIndex:i]]];
                if(i==1)
                    [string appendString:@"2_"];
                
            }
            fileName = [string substringToIndex:[string length]-1];
        }
        else if([fileName rangeOfString:@"_2_"].location != NSNotFound && [viewString isEqualToString:@""])
            fileName = [fileName stringByReplacingOccurrencesOfString:@"_2" withString:@""];
        
        UIImage *image = [UIImage imageNamed:fileName];
        
        if(image == NULL){
            /*NSString * resourcePath = [[NSBundle mainBundle] resourcePath];
             
             NSArray * directoryContents = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:resourcePath error:nil];
             NSString* beginsWithRequirement;
             NSPredicate* predicate;
             
             NSArray *subArray;
             beginsWithRequirement = [NSString stringWithFormat:@"%@_int%@_%@_",name,viewString,folderName];
             predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
             subArray = [directoryContents filteredArrayUsingPredicate:predicate];
             fileName = [subArray objectAtIndex:0];*/
            continue;
        }
        
        NSString *string = @"";
        
        if ([fileName rangeOfString:@"Background"].location != NSNotFound)
        {
            [self.imvBackground setImage:[UIImage imageNamed:fileName]];
            string = @"Background";
        }
        else if ([fileName rangeOfString:@"Carbon Fibre"].location != NSNotFound)
        {
            [self.imvCarbonFibre setImage:[UIImage imageNamed:fileName]];
            string = @"Carbon Fibre";
        }
        else if ([fileName rangeOfString:@"Carbon Pack"].location != NSNotFound)
        {
            [self.imvCarbonPack setImage:[UIImage imageNamed:fileName]];
            string = @"Carbon Pack";
        }
        else if ([fileName rangeOfString:@"Carpet"].location != NSNotFound)
        {
            [self.imvCarpet setImage:[UIImage imageNamed:fileName]];
            string = @"Carpet";
        }
        else if ([fileName rangeOfString:@"Door"].location != NSNotFound)
        {
            [self.imvDoor setImage:[UIImage imageNamed:fileName]];
            string = @"Door";
        }
        else if ([fileName rangeOfString:@"Facia"].location != NSNotFound)
        {
            [self.imvFacia setImage:[UIImage imageNamed:fileName]];
            string = @"Facia";
        }
        else if ([fileName rangeOfString:@"Outer Stitch"].location != NSNotFound)
        {
            [self.imvOuterStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Outer Stitch";
        }
        else if ([fileName rangeOfString:@"Lower Stitch"].location != NSNotFound)
        {
            [self.imvLowerStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Lower Stitch";
        }
        else if ([fileName rangeOfString:@"Lower Env Stitch"].location != NSNotFound)
        {
            [self.imvLowerEnvStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Lower Env Stitch";
        }
        else if ([fileName rangeOfString:@"Lower Env"].location != NSNotFound)
        {
            [self.imvLowerEnv setImage:[UIImage imageNamed:fileName]];
            string = @"Lower Env";
        }
        else if ([fileName rangeOfString:@"Lower"].location != NSNotFound)
        {
            [self.imvLower setImage:[UIImage imageNamed:fileName]];
            string = @"Lower";
        }
        else if ([fileName rangeOfString:@"Piano"].location != NSNotFound)
        {
            [self.imvPiano setImage:[UIImage imageNamed:fileName]];
            string = @"Piano";
        }
        else if ([fileName rangeOfString:@"Seat Inner Stitch"].location != NSNotFound)
        {
            [self.imvSeatInnerStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Inner Stitch";
        }
        else if ([fileName rangeOfString:@"Seat Inner"].location != NSNotFound)
        {
            [self.imvSeatInner setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Inner";
        }
        else if ([fileName rangeOfString:@"Seat Outer"].location != NSNotFound)
        {
            [self.imvSeatOuter setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Outer";
        }
        else if ([fileName rangeOfString:@"Upper IP"].location != NSNotFound)
        {
            [self.imvUpperIP setImage:[UIImage imageNamed:fileName]];
            string = @"Upper IP";
        }
        else if ([fileName rangeOfString:@"Upper Stitch"].location != NSNotFound)
        {
            [self.imvUpperStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Upper Stitch";
        }
        else if ([fileName rangeOfString:@"Upper Env Stitch"].location != NSNotFound)
        {
            [self.imvUpperEnvStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Upper Env Stitch";
        }
        else if ([fileName rangeOfString:@"Upper Env"].location != NSNotFound)
        {
            [self.imvUpperEnv setImage:[UIImage imageNamed:fileName]];
            string = @"Upper Env";
        }
        else if ([fileName rangeOfString:@"Upper"].location != NSNotFound)
        {
            [self.imvUpper setImage:[UIImage imageNamed:fileName]];
            string = @"Upper";
        }
        else if ([fileName rangeOfString:@"Wheel"].location != NSNotFound)
        {
            [self.imvWheel setImage:[UIImage imageNamed:fileName]];
            string = @"Wheel";
        }
        //v8
        else if ([fileName rangeOfString:@"Base"].location != NSNotFound)
        {
            [self.imvBase setImage:[UIImage imageNamed:fileName]];
            string = @"Base";
        }
        //van
        else if ([fileName rangeOfString:@"Gearshift Paddles"].location != NSNotFound)
        {
            [self.imvGearshiftPaddles setImage:[UIImage imageNamed:fileName]];
            string = @"Gearshift Paddles";
        }
        else if ([fileName rangeOfString:@"Hardware Pack"].location != NSNotFound)
        {
            [self.imvHardwarePack setImage:[UIImage imageNamed:fileName]];
            string = @"Hardware Pack";
        }
        else if ([fileName rangeOfString:@"Headlining Outer"].location != NSNotFound)
        {
            [self.imvHeadliningOuter setImage:[UIImage imageNamed:fileName]];
            string = @"Headlining Outer";
        }
        else if ([fileName rangeOfString:@"Jewellery Pack"].location != NSNotFound)
        {
            [self.imvJewelleryPack setImage:[UIImage imageNamed:fileName]];
            string = @"Jewellery Pack";
        }
        else if ([fileName rangeOfString:@"Rotaries"].location != NSNotFound)
        {
            [self.imvRotaries setImage:[UIImage imageNamed:fileName]];
            string = @"Rotaries";
        }
        else if ([fileName rangeOfString:@"Seat Stitch"].location != NSNotFound)
        {
            [self.imvSeatStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Stitch";
        }
        else if ([fileName rangeOfString:@"Seat Accent Stitch"].location != NSNotFound)
        {
            [self.imvSeatAccentStitch setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Accent Stitch";
        }
        else if ([fileName rangeOfString:@"Seat Accent"].location != NSNotFound)
        {
            [self.imvSeatAccent setImage:[UIImage imageNamed:fileName]];
            string = @"Seat Accent";
        }
        else if ([fileName rangeOfString:@"Seat"].location != NSNotFound)
        {
            [self.imvSeat setImage:[UIImage imageNamed:fileName]];
            string = @"Seat";
        }
    }
}
- (void)updateFileInUserDefault:(NSString*)string :(NSString*)fileName
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *intFile = [[defaults objectForKey:@"interiorFiles"] mutableCopy];
    if (!intFile) intFile = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [intFile count]; i ++)
    {
        if ([[intFile objectAtIndex:i] rangeOfString:[NSString stringWithFormat:@"_%@_",string]].location != NSNotFound)
        {
            [intFile replaceObjectAtIndex:i withObject:fileName];
        }
        
        NSLog(@"intfile : %@",[intFile objectAtIndex:i]);
    }
    
    [defaults setObject:intFile forKey:@"interiorFiles"];
    [defaults synchronize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setImvCarbonFibre:nil];
    [self setImvCarpet:nil];
    [self setImvDoor:nil];
    [self setImvFacia:nil];
    [self setImvLower:nil];
    [self setImvPiano:nil];
    [self setImvSeatInner:nil];
    [self setImvSeatOuter:nil];
    [self setImvUpper:nil];
    [self setImvUpperIP:nil];
    [self setImvWheel:nil];
    [self setTbvFirst:nil];
    [self setTbvSecond:nil];
    [self setImvBackground:nil];
    [self setImvBase:nil];
    [self setImvLowerEnvStitch:nil];
    [self setImvLowerEnv:nil];
    [self setImvSeatInnerStitch:nil];
    [self setImvUpperStitch:nil];
    [self setImvUpperStitch:nil];
    [self setImvLowerEnv:nil];
    [self setImvLowerStitch:nil];
    [self setImvOuterStitch:nil];
    [self setImvCarbonPack:nil];
    [self setImvUpperEnv:nil];
    [self setImvUpperEnvStitch:nil];
    [self setImvGearshiftPaddles:nil];
    [self setImvHardwarePack:nil];
    [self setImvHeadliningOuter:nil];
    [self setImvJewelleryPack:nil];
    [self setImvRotaries:nil];
    [self setImvSeat:nil];
    [self setImvSeatAccent:nil];
    [self setImvSeatAccentStitch:nil];
    [self setImvSeatStitch:nil];
    [super viewDidUnload];
}

- (IBAction)switchView:(id)sender {
    if([viewString isEqualToString:@""])
        viewString = @"_2";
    else viewString = @"";
    
    [self getFileNames];
    //[self setFirstTableDataSource:nil];
    //[self setImageFromDefaults];
    [self setInitialImages];
}

- (IBAction)loadV8:(id)sender {
    for(UIView *views in [self.view subviews])
    {
        if([views isKindOfClass:[UIImageView class]])
            [views setHidden:YES];
    }
    
    [self setCarName:@"v8" :@"1"];
    [self setFirstTableDataSource:[[NSArray alloc]init]];
    
    [self.tbvFirst reloadData];
    [self.tbvSecond reloadData];
}

- (IBAction)loadDb9:(id)sender {
    
    for(UIView *views in [self.view subviews])
    {
        if([views isKindOfClass:[UIImageView class]])
            [views setHidden:YES];
    }
    
    [self setCarName:@"db9" :@"1"];
    [self setFirstTableDataSource:[[NSArray alloc]init]];
    
    [self.tbvFirst reloadData];
    [self.tbvSecond reloadData];
}

- (IBAction)btnPressedMenu:(id)sender
{
    if (isMenuHidden == NO)
    {
        self.tbvFirst.hidden = YES;
        self.tbvSecond.hidden = YES;
        isMenuHidden = YES;
    }
    else
    {
        self.tbvFirst.hidden = NO;
        isMenuHidden = NO;
    }
}

- (IBAction)loadRapids:(id)sender {
    
    for(UIView *views in [self.view subviews])
    {
        if([views isKindOfClass:[UIImageView class]])
            [views setHidden:YES];
    }
    
    [self setCarName:@"rapids" :@"1"];
    [self setFirstTableDataSource:[[NSArray alloc]init]];
    
    [self.tbvFirst reloadData];
    [self.tbvSecond reloadData];
}


@end
