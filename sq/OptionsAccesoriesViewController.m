//
//  OptionsAccesoriesViewController.m
//  sq
//
//  Created by Tegan Tang on 7/19/13.
//  Copyright (c) 2013 LeadMotion Labs. All rights reserved.
//

#import "OptionsAccesoriesViewController.h"

@interface OptionsAccesoriesViewController ()

@end

@implementation OptionsAccesoriesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.scrollView setContentSize:CGSizeMake(1024, 1412)];
    
    NSArray *folderList = [NSArray arrayWithObjects:@"Rapide S Embrogery",
                                                    @"Badge Seat Embrodery",
                                                    @"Personal Sill Plaque",
                                                    @"Entertainment System",
                                                    @"Ventilated Seats",
                                                    @"Alarm Upgrade",
                                                    @"Smokers Pack",
                                                    @"Second Glass Ecu",
                                                    @"Leather Ecu Pouch",
                                                    @"Valve Caps",
                                                    @"Indoor Car Cover",
                                                    @"Outdoor Car Cover",
                                                    @"Ultimate Car Cover",
                                                    @"Boot Carpet Mats",
                                                    @"Carpet Mats",
                                                    @"Winter Tyres",
                                                    @"Four Piece Luggage",
                                                    @"Two Piece Luggage",
                                                    @"Saddle Luggage Set",
                                                    @"Amvox2 Watch",
                                                    @"Driving Course",
                                                    @"Picnic Hamper",
                                                    @"Rapide Child Seat",
                                                    @"Battery Conditioner",
                                                    nil];
    
    NSArray *fileList = [NSArray arrayWithObjects:@"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           @"",
                           nil];
    
    
    arrayOptionAccessories = [NSArray arrayWithArray:fileList];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [[NSUserDefaults standardUserDefaults] setObject:arrayOptionAccessories forKey:@"optionsAccessoriesFiles"];
    [defaults synchronize];
    
    [[NSUserDefaults standardUserDefaults] setObject:folderList forKey:@"optionsAccessoriesFolders"];
    [defaults synchronize];
    
    
}

- (void) viewWillAppear:(BOOL)animated
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *array = [[defaults objectForKey:@"optionsAccessoriesFiles"] mutableCopy];
    for (int i = 0; i < [array count]; i++)
    {
        NSLog(@"%i : %@",i,[array objectAtIndex:i]);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setScrollView:nil];
    [self setBtnLeatherEcuPouch:nil];
    [self setBtnSmokersPack:nil];
    [self setBtnBatteryConditioner:nil];
    [self setBtnUltimateCarCover:nil];
    [self setBtnRapideSEmbrogery:nil];
    [self setBtnVentilatedSeats:nil];
    [self setBtnLeatherEcuPouch:nil];
    [self setBtnValveCaps:nil];
    [self setBtnBootCarpetMats:nil];
    [self setBtnTwoPieceLuggage:nil];
    [self setBtnPicnicHamper:nil];
    [self setBtnRapideChildSeat:nil];
    [self setBtnBatteryConditioner:nil];
    [self setBtnSaddleLuggageSet:nil];
    [self setBtnAmvox2Watch:nil];
    [self setBtnDrivingCourse:nil];
    [self setBtnCarpetMats:nil];
    [self setBtnWinterTyres:nil];
    [self setBtnFourPieceLuggage:nil];
    [self setBtnIndoorCarCover:nil];
    [self setBtnOutdoorCarCover:nil];
    [self setBtnUltimateCarCover:nil];
    [self setBtnAlarmUpgrade:nil];
    [self setBtnSmokersPack:nil];
    [self setBtnSecondGlassEcu:nil];
    [self setBtnBadgeSeatEmbrodery:nil];
    [self setBtnPersonalSillPlaque:nil];
    [self setBtnEntertainmentSystem:nil];
    [self setVwRapideSEmbrogery:nil];
    [self setVwVentilatedSeats:nil];
    [self setVwLeatherEcuPouch:nil];
    [self setVwValveCaps:nil];
    [self setVwBootCarpetMats:nil];
    [self setVwTwoPieceLuggage:nil];
    [self setVwPicnicHamper:nil];
    [self setVwRapideChildSeat:nil];
    [self setVwBatteryConditioner:nil];
    [self setVwSaddleLuggageSet:nil];
    [self setVwAmvox2Watch:nil];
    [self setVwDrivingCourse:nil];
    [self setVwCarpetMats:nil];
    [self setVwWinterTyres:nil];
    [self setVwFourPieceLuggage:nil];
    [self setVwIndoorCarCover:nil];
    [self setVwOutdoorCarCover:nil];
    [self setVwUltimateCarCover:nil];
    [self setVwAlarmUpgrade:nil];
    [self setVwSmokersPack:nil];
    [self setVwSecondGlassEcu:nil];
    [self setVwBadgeSeatEmbrodery:nil];
    [self setVwPersonalSillPlaque:nil];
    [self setVwEntertainmentSystem:nil];
    [super viewDidUnload];
}

- (void)addFileInUserDefault:(NSString*)string
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *oaFolder = [[defaults objectForKey:@"optionsAccessoriesFolders"] mutableCopy];
    NSMutableArray *oaFile = [[defaults objectForKey:@"optionsAccessoriesFiles"] mutableCopy];
    if (!oaFolder) oaFolder = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [oaFolder count]; i ++)
    {
        if ([[oaFolder objectAtIndex:i] rangeOfString:string].location != NSNotFound)
        {
            [oaFile replaceObjectAtIndex:i withObject:@"Added"];
        }
    }
    
    [defaults setObject:oaFile forKey:@"optionsAccessoriesFiles"];
    [defaults synchronize];
}

- (void)deleteFileInUserDefault:(NSString*)string
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *oaFolder = [[defaults objectForKey:@"optionsAccessoriesFolders"] mutableCopy];
    NSMutableArray *oaFile = [[defaults objectForKey:@"optionsAccessoriesFiles"] mutableCopy];
    if (!oaFolder) oaFolder = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [oaFolder count]; i ++)
    {
        if ([[oaFolder objectAtIndex:i] rangeOfString:string].location != NSNotFound)
        {
            [oaFile replaceObjectAtIndex:i withObject:@""];
        }
    }
    
    [defaults setObject:oaFile forKey:@"optionsAccessoriesFiles"];
    [defaults synchronize];
}

- (IBAction)bpRapideSEmbrogery:(id)sender {
    
    NSString *string = @"Rapide S Embrogery";

    if (self.btnRapideSEmbrogery.backgroundColor == [UIColor yellowColor])
    {
        [self.btnRapideSEmbrogery setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwRapideSEmbrogery setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnRapideSEmbrogery setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwRapideSEmbrogery setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpVentilatedSeats:(id)sender {
    
    NSString *string = @"Ventilated Seats";
    
    if (self.btnVentilatedSeats.backgroundColor == [UIColor yellowColor])
    {
        [self.btnVentilatedSeats setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwVentilatedSeats setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnVentilatedSeats setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwVentilatedSeats setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpLeatherEcuPouch:(id)sender {
    
    NSString *string = @"Leather Ecu Pouch";
    
    if (self.btnLeatherEcuPouch.backgroundColor == [UIColor yellowColor])
    {
        [self.btnLeatherEcuPouch setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwLeatherEcuPouch setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnLeatherEcuPouch setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwLeatherEcuPouch setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpBadgeSeatEmbrodery:(id)sender {
    
    NSString *string = @"Badge Seat Embrodery";
    
    if (self.btnBadgeSeatEmbrodery.backgroundColor == [UIColor yellowColor])
    {
        [self.btnBadgeSeatEmbrodery setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwBadgeSeatEmbrodery setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnBadgeSeatEmbrodery setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwBadgeSeatEmbrodery setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpAlarmUpgrade:(id)sender {
    
    NSString *string = @"Alarm Upgrade";
    
    if (self.btnAlarmUpgrade.backgroundColor == [UIColor yellowColor])
    {
        [self.btnAlarmUpgrade setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwAlarmUpgrade setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnAlarmUpgrade setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwAlarmUpgrade setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpPersonalSillPlaque:(id)sender {
    
    NSString *string = @"Personal Sill Plaque";
    
    if (self.btnPersonalSillPlaque.backgroundColor == [UIColor yellowColor])
    {
        [self.btnPersonalSillPlaque setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwPersonalSillPlaque setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnPersonalSillPlaque setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwPersonalSillPlaque setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpSmokersPack:(id)sender {
    
    NSString *string = @"Smokers Pack";
    
    if (self.btnSmokersPack.backgroundColor == [UIColor yellowColor])
    {
        [self.btnSmokersPack setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwSmokersPack setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnSmokersPack setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwSmokersPack setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpEntertainmentSystem:(id)sender {
    
    NSString *string = @"Entertainment System";
    
    if (self.btnEntertainmentSystem.backgroundColor == [UIColor yellowColor])
    {
        [self.btnEntertainmentSystem setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwEntertainmentSystem setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnEntertainmentSystem setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwEntertainmentSystem setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpSecondGlassEcu:(id)sender {
    
    NSString *string = @"Second Glass Ecu";
    
    if (self.btnSecondGlassEcu.backgroundColor == [UIColor yellowColor])
    {
        [self.btnSecondGlassEcu setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwSecondGlassEcu setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnSecondGlassEcu setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwSecondGlassEcu setBackgroundColor:[UIColor yellowColor]];
    }
}
- (IBAction)bpValveCaps:(id)sender {
    
    NSString *string = @"Valve Caps";
    
    if (self.btnValveCaps.backgroundColor == [UIColor yellowColor])
    {
        [self.btnValveCaps setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwValveCaps setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnValveCaps setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwValveCaps setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpBootCarpetMats:(id)sender {
    
    NSString *string = @"Boot Carpet Mats";
    
    if (self.btnBootCarpetMats.backgroundColor == [UIColor yellowColor])
    {
        [self.btnBootCarpetMats setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwBootCarpetMats setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnBootCarpetMats setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwBootCarpetMats setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpTwoPieceLuggage:(id)sender {
    
    NSString *string = @"Two Piece Luggage";
    
    if (self.btnTwoPieceLuggage.backgroundColor == [UIColor yellowColor])
    {
        [self.btnTwoPieceLuggage setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwTwoPieceLuggage setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnTwoPieceLuggage setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwTwoPieceLuggage setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpPicnicHamper:(id)sender {
    
    NSString *string = @"Picnic Hamper";
    
    if (self.btnPicnicHamper.backgroundColor == [UIColor yellowColor])
    {
        [self.btnPicnicHamper setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwPicnicHamper setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnPicnicHamper setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwPicnicHamper setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpRapideChildSeat:(id)sender {
    
    NSString *string = @"Rapide Child Seat";
    
    if (self.btnRapideChildSeat.backgroundColor == [UIColor yellowColor])
    {
        [self.btnRapideChildSeat setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwRapideChildSeat setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnRapideChildSeat setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwRapideChildSeat setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpBatteryConditioner:(id)sender {
    
    NSString *string = @"Battery Conditioner";
    
    if (self.btnBatteryConditioner.backgroundColor == [UIColor yellowColor])
    {
        [self.btnBatteryConditioner setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwBatteryConditioner setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnBatteryConditioner setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwBatteryConditioner setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpSaddleLuggageSet:(id)sender {
    
    NSString *string = @"Saddle Luggage Set";
    
    if (self.btnSaddleLuggageSet.backgroundColor == [UIColor yellowColor])
    {
        [self.btnSaddleLuggageSet setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwSaddleLuggageSet setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnSaddleLuggageSet setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwSaddleLuggageSet setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpAmvox2Watch:(id)sender {
    
    NSString *string = @"Amvox2 Watch";
    
    if (self.btnAmvox2Watch.backgroundColor == [UIColor yellowColor])
    {
        [self.btnAmvox2Watch setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwAmvox2Watch setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnAmvox2Watch setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwAmvox2Watch setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpDrivingCourse:(id)sender {
    
    NSString *string = @"Driving Course";
    
    if (self.btnDrivingCourse.backgroundColor == [UIColor yellowColor])
    {
        [self.btnDrivingCourse setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwDrivingCourse setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnDrivingCourse setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwDrivingCourse setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpCarpetMats:(id)sender {
    
    NSString *string = @"Carpet Mats";
    
    if (self.btnCarpetMats.backgroundColor == [UIColor yellowColor])
    {
        [self.btnCarpetMats setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwCarpetMats setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnCarpetMats setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwCarpetMats setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpWinterTyres:(id)sender {
    
    NSString *string = @"Winter Tyres";
    
    if (self.btnWinterTyres.backgroundColor == [UIColor yellowColor])
    {
        [self.btnWinterTyres setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwWinterTyres setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnWinterTyres setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwWinterTyres setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpFourPieceLuggage:(id)sender {
    
    NSString *string = @"Four Piece Luggage";
    
    if (self.btnFourPieceLuggage.backgroundColor == [UIColor yellowColor])
    {
        [self.btnFourPieceLuggage setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwFourPieceLuggage setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnFourPieceLuggage setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwFourPieceLuggage setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpIndoorCarCover:(id)sender {
    
    NSString *string = @"Indoor Car Cover";
    
    if (self.btnIndoorCarCover.backgroundColor == [UIColor yellowColor])
    {
        [self.btnIndoorCarCover setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwIndoorCarCover setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnIndoorCarCover setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwIndoorCarCover setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpOutdoorCarCover:(id)sender {
    
    NSString *string = @"Outdoor Car Cover";
    
    if (self.btnOutdoorCarCover.backgroundColor == [UIColor yellowColor])
    {
        [self.btnOutdoorCarCover setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwOutdoorCarCover setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnOutdoorCarCover setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwOutdoorCarCover setBackgroundColor:[UIColor yellowColor]];
    }
}

- (IBAction)bpUltimateCarCover:(id)sender {
    
    NSString *string = @"Ultimate Car Cover";
    
    if (self.btnUltimateCarCover.backgroundColor == [UIColor yellowColor])
    {
        [self.btnUltimateCarCover setBackgroundColor:[UIColor clearColor]];
        [self deleteFileInUserDefault:string];
        [self.vwUltimateCarCover setBackgroundColor:[UIColor colorWithRed:230.0f/255.0f green:230.0f/255.0f blue:230.0f/255.0f alpha:1.0f]];
    }
    else
    {
        [self.btnUltimateCarCover setBackgroundColor:[UIColor yellowColor]];
        [self addFileInUserDefault:string];
        [self.vwUltimateCarCover setBackgroundColor:[UIColor yellowColor]];
    }
}
@end
