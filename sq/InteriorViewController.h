//
//  InteriorViewController.h
//  sq
//
//  Created by Tegan Tang on 7/19/13.
//  Copyright (c) 2013 LeadMotion Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InteriorViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSString *name, *selectedFolder, *view;
    NSArray *arrayFirstTableView;
    NSMutableArray *fileNames;
    
    bool isMenuHidden;
    
    NSMutableArray *s1, *s2;
    NSMutableArray *contemporary, *fastTrack;
}

@property (unsafe_unretained, nonatomic) IBOutlet UITableView *tbvFirst;
@property (unsafe_unretained, nonatomic) IBOutlet UITableView *tbvSecond;

@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvBackground;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvCarbonFibre;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvCarpet;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvDoor;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvFacia;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvLower;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvPiano;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvSeatInner;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvSeatOuter;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvUpper;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvUpperIP;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvWheel;



@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvBase;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvLowerEnvStitch;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvSeatInnerStitch;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvUpperStitch;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvLowerEnv;


@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvLowerStitch;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvOuterStitch;

//db9
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvCarbonPack;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvUpperEnv;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvUpperEnvStitch;

//van
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvGearshiftPaddles;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvHardwarePack;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvHeadliningOuter;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvJewelleryPack;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvRotaries;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvSeat;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvSeatAccent;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvSeatAccentStitch;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvSeatStitch;



- (IBAction)btnPressedMenu:(id)sender;



























@end
