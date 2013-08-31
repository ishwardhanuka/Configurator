//
//  ExteriorViewController.m
//  sq
//
//  Created by Tegan Tang on 7/19/13.
//  Copyright (c) 2013 LeadMotion Labs. All rights reserved.
//

#import "ExteriorViewController.h"

@interface ExteriorViewController ()

@end

@implementation ExteriorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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

- (void)setCarName:(NSString*)carName
{
    name = carName;
}

- (void)setInitialImages
{
    
}

- (void)setFirstTableDataSource:(NSArray*)folderList
{
    //background.png, base.png, carshadow.png, shadow.png
    
    folderList = [NSArray arrayWithObjects:@"Paint Colour", @"Wheel Type", @"Caliper Colour", nil];
    
    //folderList = [NSArray arrayWithObjects:@"Base", @"Caliper Colour", @"Carbon Fibre", @"Paint Colour", @"Shadow",@"Wheel Type", nil];
    
    //folderList = [NSArray arrayWithObjects:@"Base", @"Caliper Colour", @"Carbon Fibre", @"GS", @"Grille Mesh", @"Lipstick", @"Paint Colour", @"Roof Graphic", @"Shadow",@"Wheel Type",@"Window Surround", nil];
    
    arrayFirstTableView = [NSArray arrayWithArray:folderList];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [[NSUserDefaults standardUserDefaults] setObject:arrayFirstTableView forKey:@"exteriorFolders"];
    [defaults synchronize];
    
    NSMutableArray *arrayFiles = [[NSMutableArray alloc] init];
    
    NSString * resourcePath = [[NSBundle mainBundle] resourcePath];
    NSLog(@"resourcePath : %@",resourcePath);
    
    NSArray * directoryContents = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:resourcePath error:nil];
    NSString* beginsWithRequirement;
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
    
    NSArray *subArray;
    
    for(NSString *folder in folderList)
    {
        if([folder isEqualToString:@"Base"])
        {
            [self.imvBase setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_Base_",name];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvBase setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Caliper Colour"])
        {
            [self.imvCaliperColour setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_Caliper Colour_",name];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvCaliperColour setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Carbon Fibre"])
        {
            [self.imvCarbonFibre setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_Carbon Fibre_",name];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvCarbonFibre setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"GS"])
        {
            [self.imvGS setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_GS_",name];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvGS setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Grille Mesh"])
        {
            [self.imvGrilleMesh setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_Grille Mesh_",name];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvGrilleMesh setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Lipstick"])
        {
            [self.imvLipstick setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_Lipstick_",name];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvLipstick setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Paint Colour"])
        {
            [self.imvPaintColour setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_Paint Colour_",name];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvPaintColour setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Roof Graphic"])
        {
            [self.imvRoofGraphic setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_Roof Graphic_",name];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvRoofGraphic setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Shadow"])
        {
            [self.imvShadow setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_Shadow_",name];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvShadow setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Wheel Type"])
        {
            [self.imvWheelType setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_Wheel Type_",name];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvWheelType setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
        else if([folder isEqualToString:@"Window Surround"])
        {
            [self.imvWindowSurround setHidden:NO];
            beginsWithRequirement = [NSString stringWithFormat:@"%@_Window Surround_",name];
            predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
            subArray = [directoryContents filteredArrayUsingPredicate:predicate];
            [self.imvWindowSurround setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
            [arrayFiles addObject:[subArray objectAtIndex:0]];
        }
    }
    
    [self.imvBase setHidden:NO];
    beginsWithRequirement = [NSString stringWithFormat:@"%@_Base_",name];
    predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
    subArray = [directoryContents filteredArrayUsingPredicate:predicate];
    [self.imvBase setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
    
    [self.imvShadow setHidden:NO];
    beginsWithRequirement = [NSString stringWithFormat:@"%@_Shadow_",name];
    predicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[cd] %@", beginsWithRequirement];
    subArray = [directoryContents filteredArrayUsingPredicate:predicate];
    [self.imvShadow setImage:[UIImage imageNamed:[subArray objectAtIndex:0]]];
    
    for (int i = 0; i < [arrayFiles count]; i++)
    {
        NSLog(@"file %i : %@", i, [arrayFiles objectAtIndex:i]);
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:arrayFiles forKey:@"exteriorFiles"];
    [defaults synchronize];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self setCarName:@"rapids"];
    
    contemporary = [[NSMutableArray alloc]initWithObjects: @"AMETHYST RED", @"APPLETREE GREEN", @"COBALT BLUE", @"CONCOURS BLUE", @"RED LION", @"GREY BULL", @"HAMMERHEAD SILVER", @"HARDLY GREEN", @"SELENE BRONZE", @"LIGHTNING SILVER", @"MADAGASCAR ORANGE", @"MAKO BLUE", @"MARIANA BLUE", @"MARRON BLACK", @"QUANTUM SILVER", @"SILVER BLONDE", @"STRATUS WHITE", @"VIRIDIAN GREEN", nil];
    
    fastTrack = [[NSMutableArray alloc] initWithObjects:@"JET BLACK", @"METEORITE SILVER", @"MIDNIGHT BLUE", @"ONYX BLACK", @"SILVER FOX", @"TUNGSTEN SILVER", @"VOLCANO RED", nil];
    
    specials = [[NSMutableArray alloc] initWithObjects: @"KOPI BRONZE", @"MORNING FROST WHITE", @"SKYFALL SILVER", @"STORM BLACK", @"SUNBURST YELLOW", nil];
    
    [self setFirstTableDataSource:[[NSArray alloc]init]];
    
    self.tbvFirst.delegate = self;
    self.tbvFirst.dataSource = self;
    
    self.tbvSecond.delegate = self;
    self.tbvSecond.dataSource = self;
    
    isMenuHidden = NO;
    
    s1 = [[NSMutableArray alloc] init];
    s2 = [[NSMutableArray alloc] init];
    s3 = [[NSMutableArray alloc] init];
    
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

-(void)getFileNames
{
    NSString * resourcePath = [[NSBundle mainBundle] resourcePath];
    fileNames = [[NSMutableArray alloc]init];
    
    NSError * error;
    NSArray * directoryContents = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:resourcePath error:&error];
    
    for (NSString *s in directoryContents)
    {
        if([s hasPrefix:[NSString stringWithFormat:@"%@_%@",name,selectedFolder]])
        {
            if(![s hasSuffix:@"thumb.jpg"])
            {
                if ([selectedFolder isEqualToString:@"Paint Colour"])
                {
                    NSString *colorName = [[s componentsSeparatedByString:@"_"]lastObject];
                    
                    if([contemporary containsObject:[[colorName substringToIndex:[colorName length]-4] uppercaseString]])
                        [s1 addObject:s];
                    else if([fastTrack containsObject:[[colorName substringToIndex:[colorName length]-4]uppercaseString]])
                        [s2 addObject:s];
                    else if([specials containsObject:[[colorName substringToIndex:[colorName length]-4]uppercaseString]])
                        [s3 addObject:s];
                }
                else
                    
                
                
                [fileNames addObject:s];
            }
        }
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(tableView.tag == 1 && [selectedFolder isEqualToString:@"Paint Colour"])
    {
        switch (section) {
            case 0:
                return @"Contemporary";
            case 1:
                return @"Fast Track";
            case 2:
                return @"Specials";
            default:
                return @"";
        }
    }
    else return @"";
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    cell.backgroundColor = [UIColor clearColor];
    cell.backgroundView.backgroundColor = [UIColor clearColor];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    if(tableView.tag == 1 && [selectedFolder isEqualToString:@"Paint Colour"])
        return 3;
    else return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    
    
    if(tableView.tag == 1 && [selectedFolder isEqualToString:@"Paint Colour"])
    {
        switch (section) {
            case 0:
                return [s1 count];
                break;
            case 1:
                return [s2 count];
                break;
            case 2:
                return [s3 count];
                break;
            default:
                break;
        }
        return [fileNames count];
    }
    else
    {
        return [arrayFirstTableView count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    if(tableView.tag == 1 && [selectedFolder isEqualToString:@"Paint Colour"])
    {
        NSString *fullString;
        switch (indexPath.section) {
            case 0:
                fullString = [s1 objectAtIndex:indexPath.row];
                break;
            case 1:
                fullString = [s2 objectAtIndex:indexPath.row];
                break;
            case 2:
                fullString = [s3 objectAtIndex:indexPath.row];
                break;
            default:
                break;
        }
        NSString *result = [self contentsInParenthesis:fullString];
        NSArray *subStrings = [result componentsSeparatedByString:@"_"];
        for (int i = 0; i < [subStrings count]; i++)
        {
            cell.textLabel.text = [subStrings objectAtIndex:i];
        }
        
        NSString *fileName = [NSString stringWithFormat:@"Colour_%@_thumb.png",cell.textLabel.text];
        [cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"Colour_%@_thumb.png",cell.textLabel.text]]];
    
        
    }
    
    else if (tableView.tag == 0)
    {
        cell.textLabel.text = [arrayFirstTableView objectAtIndex:indexPath.row];
    }
    else
    {
        //cell.textLabel.text = [fileNames objectAtIndex:indexPath.row];
        
        NSString *fullString = [fileNames objectAtIndex:indexPath.row];
        
        NSString *result = [self contentsInParenthesis:fullString];
        NSArray *subStrings = [result componentsSeparatedByString:@"_"];
        for (int i = 0; i < [subStrings count]; i++)
        {
            cell.textLabel.text = [subStrings objectAtIndex:i];
        }
        
        NSString *fileName = [[[fileNames objectAtIndex:indexPath.row]componentsSeparatedByString:@".png"]objectAtIndex:0];
        [cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_thumb.jpg",fileName]]];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(tableView.tag == 1 && [selectedFolder isEqualToString:@"Paint Colour"])
    {
        NSString *fileName;
        
        switch (indexPath.section) {
            case 0:
                fileName = [s1 objectAtIndex:indexPath.row];
                break;
            case 1:
                fileName = [s2 objectAtIndex:indexPath.row];
                break;
            case 2:
                fileName = [s3 objectAtIndex:indexPath.row];
                break;
            default:
                break;
        }
        
        NSLog(@"filename : %@",fileName);
        
        NSString *string = @"";
        
        if ([fileName rangeOfString:@"Base"].location != NSNotFound)
        {
            [self.imvBase setImage:[UIImage imageNamed:fileName]];
            string = @"Base";
        }
        else if ([fileName rangeOfString:@"Caliper Colour"].location != NSNotFound)
        {
            [self.imvCaliperColour setImage:[UIImage imageNamed:fileName]];
            string = @"Caliper Colour";
        }
        else if ([fileName rangeOfString:@"Carbon Fibre"].location != NSNotFound)
        {
            [self.imvCarbonFibre setImage:[UIImage imageNamed:fileName]];
            string = @"Carbon Fibre";
        }
        else if ([fileName rangeOfString:@"GS"].location != NSNotFound)
        {
            [self.imvGS setImage:[UIImage imageNamed:fileName]];
            string = @"GS";
        }
        else if ([fileName rangeOfString:@"Grille Mesh"].location != NSNotFound)
        {
            [self.imvGrilleMesh setImage:[UIImage imageNamed:fileName]];
            string = @"Grille Mesh";
        }
        else if ([fileName rangeOfString:@"Lipstick"].location != NSNotFound)
        {
            [self.imvLipstick setImage:[UIImage imageNamed:fileName]];
            string = @"Lipstick";
        }
        else if ([fileName rangeOfString:@"Paint Colour"].location != NSNotFound)
        {
            [self.imvPaintColour setImage:[UIImage imageNamed:fileName]];
            string = @"Paint Colour";
        }
        else if ([fileName rangeOfString:@"Roof Graphic"].location != NSNotFound)
        {
            [self.imvRoofGraphic setImage:[UIImage imageNamed:fileName]];
            string = @"Roof Graphic";
        }
        else if ([fileName rangeOfString:@"Shadow"].location != NSNotFound)
        {
            [self.imvShadow setImage:[UIImage imageNamed:fileName]];
            string = @"Shadow";
        }
        else if ([fileName rangeOfString:@"Wheel Type"].location != NSNotFound)
        {
            [self.imvWheelType setImage:[UIImage imageNamed:fileName]];
            string = @"Wheel Type";
        }
        else if ([fileName rangeOfString:@"Window Surround"].location != NSNotFound)
        {
            [self.imvWindowSurround setImage:[UIImage imageNamed:fileName]];
            string = @"Window Surround";
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
        
        if ([fileName rangeOfString:@"Base"].location != NSNotFound)
        {
            [self.imvBase setImage:[UIImage imageNamed:fileName]];
            string = @"Base";
        }
        else if ([fileName rangeOfString:@"Caliper Colour"].location != NSNotFound)
        {
            [self.imvCaliperColour setImage:[UIImage imageNamed:fileName]];
            string = @"Caliper Colour";
        }
        else if ([fileName rangeOfString:@"Carbon Fibre"].location != NSNotFound)
        {
            [self.imvCarbonFibre setImage:[UIImage imageNamed:fileName]];
            string = @"Carbon Fibre";
        }
        else if ([fileName rangeOfString:@"GS"].location != NSNotFound)
        {
            [self.imvGS setImage:[UIImage imageNamed:fileName]];
            string = @"GS";
        }
        else if ([fileName rangeOfString:@"Grille Mesh"].location != NSNotFound)
        {
            [self.imvGrilleMesh setImage:[UIImage imageNamed:fileName]];
            string = @"Grille Mesh";
        }
        else if ([fileName rangeOfString:@"Lipstick"].location != NSNotFound)
        {
            [self.imvLipstick setImage:[UIImage imageNamed:fileName]];
            string = @"Lipstick";
        }
        else if ([fileName rangeOfString:@"Paint Colour"].location != NSNotFound)
        {
            [self.imvPaintColour setImage:[UIImage imageNamed:fileName]];
            string = @"Paint Colour";
        }
        else if ([fileName rangeOfString:@"Roof Graphic"].location != NSNotFound)
        {
            [self.imvRoofGraphic setImage:[UIImage imageNamed:fileName]];
            string = @"Roof Graphic";
        }
        else if ([fileName rangeOfString:@"Shadow"].location != NSNotFound)
        {
            [self.imvShadow setImage:[UIImage imageNamed:fileName]];
            string = @"Shadow";
        }
        else if ([fileName rangeOfString:@"Wheel Type"].location != NSNotFound)
        {
            [self.imvWheelType setImage:[UIImage imageNamed:fileName]];
            string = @"Wheel Type";
        }
        else if ([fileName rangeOfString:@"Window Surround"].location != NSNotFound)
        {
            [self.imvWindowSurround setImage:[UIImage imageNamed:fileName]];
            string = @"Window Surround";
        }
        
        [self updateFileInUserDefault:string :fileName];
    }
}

- (void)updateFileInUserDefault:(NSString*)string :(NSString*)fileName
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *extFile = [[defaults objectForKey:@"exteriorFiles"] mutableCopy];
    if (!extFile) extFile = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [extFile count]; i ++)
    {
        if ([[extFile objectAtIndex:i] rangeOfString:string].location != NSNotFound)
        {
            [extFile replaceObjectAtIndex:i withObject:fileName];
        }
        
        NSLog(@"extfile : %@",[extFile objectAtIndex:i]);
    }

    [defaults setObject:extFile forKey:@"exteriorFiles"];
    [defaults synchronize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setImvShadow:nil];
    [self setImvBase:nil];
    [self setImvPaintColour:nil];
    [self setImvWheelType:nil];
    [self setTbvFirst:nil];
    [self setTbvSecond:nil];
    [self setImvCaliperColour:nil];
    [self setImvGrilleMesh:nil];
    [self setImvGS:nil];
    [self setImvLipstick:nil];
    [self setImvRoofGraphic:nil];
    [self setImvWindowSurround:nil];
    [self setMainView:nil];
    [self setImvCarbonFibre:nil];
    [super viewDidUnload];
}
@end
