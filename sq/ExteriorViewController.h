//
//  ExteriorViewController.h
//  sq
//
//  Created by Tegan Tang on 7/19/13.
//  Copyright (c) 2013 LeadMotion Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExteriorViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSString *name, *selectedFolder;
    NSArray *arrayFirstTableView;
    NSMutableArray *fileNames;
    
    bool isMenuHidden;
    
    NSMutableArray *s1, *s2, *s3;
    NSMutableArray *contemporary, *fastTrack, *specials;
}

@property (unsafe_unretained, nonatomic) IBOutlet UITableView *tbvFirst;
@property (unsafe_unretained, nonatomic) IBOutlet UITableView *tbvSecond;

@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvShadow;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvBase;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvPaintColour;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvWheelType;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvCaliperColour;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvGrilleMesh;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvGS;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvLipstick;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvRoofGraphic;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvWindowSurround;
@property (unsafe_unretained, nonatomic) IBOutlet UIImageView *imvCarbonFibre;




@property (strong, nonatomic) IBOutlet UIView *mainView;

- (IBAction)btnPressedMenu:(id)sender;




- (void)setCarName:(NSString*)carName;

@end
