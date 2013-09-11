//
//  SummaryViewController.h
//  sq
//
//  Created by Tegan Tang on 7/30/13.
//  Copyright (c) 2013 LeadMotion Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface SummaryViewController : UIViewController<MFMailComposeViewControllerDelegate,UIAlertViewDelegate>
{
    int lastExtLabel_Y;
    double exteriorPrice;
    double exteriorPrice2;
    double interiorPrice;
    double interiorPrice2;
    double otherPrice;
    NSArray *oaFolderList;
    NSString *pdfFilePath;
    NSMutableData *jsonData;
    NSString *name;
}

extern int const LINESPACE;

@property (unsafe_unretained, nonatomic) IBOutlet UIScrollView *scrollView;



- (IBAction)share:(id)sender;
- (IBAction)editUserInfo:(id)sender;



@end
