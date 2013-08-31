//
//  SummaryViewController.m
//  sq
//
//  Created by Tegan Tang on 7/30/13.
//  Copyright (c) 2013 LeadMotion Labs. All rights reserved.
//

#import "SummaryViewController.h"
#import <MessageUI/MFMailComposeViewController.h>
#import <QuartzCore/QuartzCore.h>

@interface SummaryViewController ()
@end

@implementation SummaryViewController
int const LINESPACE = 25;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)setExteriorFolderLabel
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *extFolderList = [NSMutableArray arrayWithArray:[defaults objectForKey:@"exteriorFolders"]];
    exteriorPrice = 0.0;
    
    /*UILabel *exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 200, 200, 20)];
     [exteriorLabel setText:@"Exterior Parts"];
     exteriorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
     [self.scrollView addSubview:exteriorLabel];
     //[self.innerView addSubview:exteriorLabel];
     exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(250, 180, 200, 20)];
     [exteriorLabel setText:@"Detail"];
     exteriorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
     [self.scrollView addSubview:exteriorLabel];
     
     exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(500, 180, 200, 20)];
     [exteriorLabel setText:@"Category"];
     exteriorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
     [self.scrollView addSubview:exteriorLabel];
     
     exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(700, 180, 200, 20)];
     [exteriorLabel setText:@"Price (RM)"];
     exteriorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
     [self.scrollView addSubview:exteriorLabel];*/
    
    UILabel *exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 180, 200, 20)];
    [exteriorLabel setText:[NSString stringWithFormat:@"Model: %@", [defaults stringForKey:@"SelectedCarName"]]];
    exteriorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [self.scrollView addSubview:exteriorLabel];
    
    exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 200, 400, 20)];
    [exteriorLabel setText:@"Specification and Cost Summary"];
    [self.scrollView addSubview:exteriorLabel];
    
    exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 240, 400, 20)];
    exteriorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [exteriorLabel setText:@"Base Unit (Inclusive of Duty/Taxes)"];
    [self.scrollView addSubview:exteriorLabel];
    
    exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(700, 240, 200, 20)];
    exteriorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [exteriorLabel setText:[NSString stringWithFormat:@"%.2f", [self getCarBasePrice]]];
    exteriorPrice = exteriorPrice + [self getCarBasePrice];
    [self.scrollView addSubview:exteriorLabel];
    
    exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 280, 200, 20)];
    [exteriorLabel setText:@"Exterior Parts"];
    exteriorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [self.scrollView addSubview:exteriorLabel];
    //[self.innerView addSubview:exteriorLabel];
    exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(250, 280, 200, 20)];
    [exteriorLabel setText:@"Detail"];
    exteriorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [self.scrollView addSubview:exteriorLabel];
    
    exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(500, 280, 200, 20)];
    [exteriorLabel setText:@"Category"];
    exteriorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [self.scrollView addSubview:exteriorLabel];
    
    exteriorLabel = [[UILabel alloc] initWithFrame:CGRectMake(700, 280, 200, 20)];
    [exteriorLabel setText:@"Price (RM)"];
    exteriorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [self.scrollView addSubview:exteriorLabel];
    
    NSString *categoryName;
    NSString *categoryValue;
    for (int i = 0; i < [extFolderList count]; i++)
    {
        UILabel *label;
        
        //set column 1
        if (i == 0)
            label = [[UILabel alloc] initWithFrame:CGRectMake(10, 310, 200, 20)];
        else
            label = [[UILabel alloc] initWithFrame:CGRectMake(10, i*LINESPACE + 310, 200, 20)];
        categoryName = [extFolderList objectAtIndex:i];
        [label setText:categoryName];
        [self.scrollView addSubview:label];
        
        //set column 3
        
        label = [[UILabel alloc] initWithFrame:CGRectMake(500, i*LINESPACE+310, 200, 20)];
        categoryValue = [defaults stringForKey:[NSString stringWithFormat:@"%@ Category",categoryName]];
        [label setText:categoryValue];
        [self.scrollView addSubview:label];
        
        //set colum 4
        
        double temp = [self getPriceByCategory:categoryName :categoryValue];
        if(temp != 0.0){
            label = [[UILabel alloc] initWithFrame:CGRectMake(700, i*LINESPACE+310, 200, 20)];
            [label setText:[NSString stringWithFormat:@"%.02f", temp]];
            [self.scrollView addSubview:label];
            exteriorPrice = exteriorPrice + temp;
        }
        
        //[self.innerView addSubview:label];
        
        NSLog(@"array %i : %@", i, [extFolderList objectAtIndex:i]);
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


- (void)setExteriorFileLabel
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *extFile = [NSMutableArray arrayWithArray:[defaults objectForKey:@"exteriorFiles"]];
    NSMutableArray *extFolderList = [NSMutableArray arrayWithArray:[defaults objectForKey:@"exteriorFolders"]];
    NSString *detailName;
    NSString *detailValue;
    exteriorPrice2 = 0.0;
    for (int i = 0; i < [extFile count]; i++)
    {
        UILabel *label;
        
        if (i == 0)
            label = [[UILabel alloc] initWithFrame:CGRectMake(250, 310, 200, 20)];
        else
        {
            label = [[UILabel alloc] initWithFrame:CGRectMake(250, i*LINESPACE + 310, 200, 20)];
            lastExtLabel_Y = i*LINESPACE + 310;
        }
        detailName = [extFolderList objectAtIndex:i];
        //[label setText:[extFile objectAtIndex:i]];
        
        NSString *fullString = [extFile objectAtIndex:i];
        NSString *result = [self contentsInParenthesis:fullString];
        NSArray *subStrings = [result componentsSeparatedByString:@"_"];
        for (int i = 0; i < [subStrings count]; i++)
        {
            [label setText:[subStrings objectAtIndex:i]];
        }
        detailValue = label.text;
        [self.scrollView addSubview:label];
        
        double partPrice = [self getPriceByDetail:detailName :detailValue];
        if(partPrice != 0.0){
            label = [[UILabel alloc] initWithFrame:CGRectMake(700, i*LINESPACE + 310, 200, 20)];
            [label setText:[NSString stringWithFormat:@"%.2f", partPrice]];
            [self.scrollView addSubview:label];
            exteriorPrice2 = exteriorPrice2 + partPrice;
        }
        //[self.innerView addSubview:label];
        
        NSLog(@"array %i : %@", i, [extFile objectAtIndex:i]);
    }
}

- (void)setInteriorFolderLabel
{
    NSMutableArray *intFolderList = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"interiorFolders"]];
    interiorPrice = 0.0;
    int intLabel_Y = lastExtLabel_Y + 50;
    int label_Y = intLabel_Y + 30;
    
    UILabel *interiorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, intLabel_Y, 200, 20)];
    [interiorLabel setText:@"Interior Parts"];
    interiorLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [self.scrollView addSubview:interiorLabel];
    //[self.innerView addSubview:interiorLabel];
    
    NSLog(@"int count : %i", [intFolderList count]);
    NSString *categoryName;
    NSString *categoryValue;
    for (int i = 0; i < [intFolderList count]; i++)
    {
        UILabel *label;
        
        //set column 1
        if (i == 0)
            label = [[UILabel alloc] initWithFrame:CGRectMake(10, label_Y, 200, 20)];
        else
            label = [[UILabel alloc] initWithFrame:CGRectMake(10, i*LINESPACE + label_Y, 200, 20)];
        categoryName = [intFolderList objectAtIndex:i];
        [label setText:categoryName];
        [self.scrollView addSubview:label];
        
        //set column 3
        label = [[UILabel alloc] initWithFrame:CGRectMake(500, i*LINESPACE + label_Y, 200, 20)];
        categoryValue = [[NSUserDefaults standardUserDefaults] stringForKey:[NSString stringWithFormat:@"%@ Category",categoryName]];
        [label setText:categoryValue];
        [self.scrollView addSubview:label];
        
        //set column 4
        double partPrice = [self getPriceByCategory:categoryName :categoryValue];
        if(partPrice != 0.0){
            label = [[UILabel alloc] initWithFrame:CGRectMake(700, i*LINESPACE + label_Y, 200, 20)];
            [label setText:[NSString stringWithFormat:@"%.2f", partPrice]];
            [self.scrollView addSubview:label];
            interiorPrice = interiorPrice + partPrice;
        }
        NSLog(@"int %i : %@", i, [intFolderList objectAtIndex:i]);
    }
}
- (void)setInteriorFileLabel
{
    NSMutableArray *intFile = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"interiorFiles"]];
    NSMutableArray *intFolderList = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"interiorFolders"]];
    
    interiorPrice2 = 0.0;
    int intLabel_Y = lastExtLabel_Y + 50;
    int label_Y = intLabel_Y + 30;
    NSString *detailName;
    NSString *detailValue;
    double partPrice;
    for (int i = 0; i < [intFile count]; i++)
    {
        UILabel *label;
        
        if (i == 0)
            label = [[UILabel alloc] initWithFrame:CGRectMake(250, label_Y, 200, 20)];
        else
        {
            label = [[UILabel alloc] initWithFrame:CGRectMake(250, i*LINESPACE + label_Y, 200, 20)];
            lastExtLabel_Y = i*LINESPACE + 70;
        }
        
        //[label setText:[intFile objectAtIndex:i]];
        detailName = [intFolderList objectAtIndex:i];
        NSString *fullString = [intFile objectAtIndex:i];
        NSString *result = [self contentsInParenthesis:fullString];
        NSArray *subStrings = [result componentsSeparatedByString:@"_"];
        for (int i = 0; i < [subStrings count]; i++)
        {
            [label setText:[subStrings objectAtIndex:i]];
        }
        detailValue = label.text;
        [self.scrollView addSubview:label];
        
        partPrice = [self getPriceByDetail:detailName :detailValue];
        if(partPrice !=0.0){
            label = [[UILabel alloc] initWithFrame:CGRectMake(700, i*LINESPACE + label_Y, 200, 20)];
            [label setText:[NSString stringWithFormat:@"%.2f", partPrice]];
            [self.scrollView addSubview:label];
            interiorPrice2 = interiorPrice2 + partPrice;
        }
        //[self.innerView addSubview:label];
        
        NSLog(@"array %i : %@", i, [intFile objectAtIndex:i]);
    }
}

- (void)setOptionsAccessoriesFolderLabel
{
    NSMutableArray *intFolderList = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"optionsAccessoriesFolders"]];
    NSMutableArray *oaFile = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"optionsAccessoriesFiles"]];
    
    //int intLabel_Y = lastExtLabel_Y + 50;
    
    
    int intLabel_Y = 820;
    int label_Y = intLabel_Y + 30;
    
    NSLog(@"%i",intLabel_Y);
    
    UILabel *oaLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, intLabel_Y, 500, 20)];
    [oaLabel setText:@"Options and Accessories Parts"];
    oaLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [self.scrollView addSubview:oaLabel];
    //[self.innerView addSubview:oaLabel];
    
    NSLog(@"int count : %i", [intFolderList count]);
    NSString *isAdded;
    int count = 0;
    for (int i = 0; i < [oaFile count]; i++)
    {
        UILabel *label;
        isAdded = [oaFile objectAtIndex:i];
        if([isAdded isEqualToString:@"Added"]){
            label = [[UILabel alloc] initWithFrame:CGRectMake(10, count*30 + label_Y, 200, 20)];
            [label setText:[intFolderList objectAtIndex:i]];
            [self.scrollView addSubview:label];
            count++;
            lastExtLabel_Y = count*30 + label_Y;
        }
        //set column 1
        //[self.innerView addSubview:label];
        
        NSLog(@"int %i : %@", i, [intFolderList objectAtIndex:i]);
    }
    if(count == 0){
        UILabel *label;
        label = [[UILabel alloc] initWithFrame:CGRectMake(10, count*30 + label_Y, 200, 20)];
        [label setText:@"-"];
        [self.scrollView addSubview:label];
        lastExtLabel_Y = count*30 + label_Y;
    }
    UILabel *label;
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, lastExtLabel_Y + 40, 200, 20)];
    [label setText:@"Sub Total"];
    label.font = [UIFont boldSystemFontOfSize:16.0f];
    [self.scrollView addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(700, lastExtLabel_Y + 40, 200, 20)];
    label.font = [UIFont boldSystemFontOfSize:16.0f];
    [label setText:[NSString stringWithFormat:@"%.2f",(exteriorPrice+exteriorPrice2+interiorPrice+interiorPrice2)]];
    [self.scrollView addSubview:label];
    
    lastExtLabel_Y = lastExtLabel_Y +80;
}

- (void)setOptionsAccessoriesFileLabel
{
    NSMutableArray *oaFile = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"optionsAccessoriesFiles"]];
    
    //int intLabel_Y = lastExtLabel_Y + 50;
    
    int intLabel_Y = 820;
    int label_Y = intLabel_Y + 50;
    
    
    
    for (int i = 0; i < [oaFile count]; i++)
    {
        UILabel *label;
        
        if (i == 0)
            label = [[UILabel alloc] initWithFrame:CGRectMake(250, label_Y, 500, 20)];
        else
        {
            label = [[UILabel alloc] initWithFrame:CGRectMake(250, i*30 + label_Y, 500, 20)];
        }
        
        [label setText:[oaFile objectAtIndex:i]];
        [self.scrollView addSubview:label];
        //[self.innerView addSubview:label];
        
        NSLog(@"array %i : %@", i, [oaFile objectAtIndex:i]);
    }
}

-(void)setOtherCost{
    otherPrice = 0.0;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *selectedCarJSON;
    NSString *selectedCar = [defaults stringForKey:@"SelectedCarName"];
    if([selectedCar isEqualToString:@"rapids"]){
        selectedCarJSON = [defaults objectForKey:@"RapideS"];
    }
    UILabel *label;
    double partPrice = 0.0;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, lastExtLabel_Y, 200, 20)];
    [label setText:@"Personal Registration"];
    label.font = [UIFont boldSystemFontOfSize:16.0f];
    [self.scrollView addSubview:label];
    lastExtLabel_Y = lastExtLabel_Y + LINESPACE;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, lastExtLabel_Y, 200, 20)];
    [label setText:@"Road Tax"];
    [self.scrollView addSubview:label];
    label = [[UILabel alloc] initWithFrame:CGRectMake(700, lastExtLabel_Y, 200, 20)];
    partPrice = [[selectedCarJSON valueForKey:@"Road Tax"]doubleValue];
    if(partPrice != 0.0){
        [label setText:[NSString stringWithFormat:@"%.2f",partPrice]];
        [self.scrollView addSubview:label];
        otherPrice = otherPrice + partPrice;
    }
    lastExtLabel_Y = lastExtLabel_Y + LINESPACE;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, lastExtLabel_Y, 200, 20)];
    [label setText:@"NUmber Plate"];
    [self.scrollView addSubview:label];
    label = [[UILabel alloc] initWithFrame:CGRectMake(700, lastExtLabel_Y, 200, 20)];
    partPrice = [[selectedCarJSON valueForKey:@"Number Plate"]doubleValue];
    if(partPrice != 0.0){
        [label setText:[NSString stringWithFormat:@"%.2f",partPrice]];
        [self.scrollView addSubview:label];
        otherPrice = otherPrice + partPrice;
    }
    lastExtLabel_Y = lastExtLabel_Y + LINESPACE;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, lastExtLabel_Y, 200, 20)];
    [label setText:@"Insurance Premium"];
    [self.scrollView addSubview:label];
    label = [[UILabel alloc] initWithFrame:CGRectMake(700, lastExtLabel_Y, 200, 20)];
    partPrice = [[selectedCarJSON valueForKey:@"Insurance Premium"]doubleValue];
    if(partPrice != 0.0){
        [label setText:[NSString stringWithFormat:@"%.2f",partPrice]];
        [self.scrollView addSubview:label];
        otherPrice = otherPrice + partPrice;
    }
    lastExtLabel_Y = lastExtLabel_Y + LINESPACE;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, lastExtLabel_Y, 200, 20)];
    [label setText:@"Registration Fee"];
    [self.scrollView addSubview:label];
    partPrice = [[selectedCarJSON valueForKey:@"Registration Fee"]doubleValue];
    if(partPrice != 0.0){
        label = [[UILabel alloc] initWithFrame:CGRectMake(700, lastExtLabel_Y, 200, 20)];
        [label setText:[NSString stringWithFormat:@"%.2f",partPrice]];
        [self.scrollView addSubview:label];
        otherPrice = otherPrice + partPrice;
    }
    lastExtLabel_Y = lastExtLabel_Y + LINESPACE;
    
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, lastExtLabel_Y, 200, 20)];
    [label setText:@"Handling & Inspection"];
    [self.scrollView addSubview:label];
    partPrice = [[selectedCarJSON valueForKey:@"Handling Inspection"]doubleValue];
    if(partPrice != 0.0){
        label = [[UILabel alloc] initWithFrame:CGRectMake(700, lastExtLabel_Y, 200, 20)];
        [label setText:[NSString stringWithFormat:@"%.2f",partPrice]];
        [self.scrollView addSubview:label];
        otherPrice = otherPrice + partPrice;
    }
    lastExtLabel_Y = lastExtLabel_Y + 50;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, lastExtLabel_Y, 600, 20)];
    label.font = [UIFont boldSystemFontOfSize:16.0f];
    [label setText:@"Total on the road, incl Reg Fee, 12 months Road Tax, No Plates, Insurance"];
    [self.scrollView addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(700, lastExtLabel_Y, 600, 20)];
    label.font = [UIFont boldSystemFontOfSize:16.0f];
    [label setText:[NSString stringWithFormat:@"%.2f",(exteriorPrice+exteriorPrice2+interiorPrice+interiorPrice2+otherPrice)]];
    [self.scrollView addSubview:label];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self getName];
    oaFolderList = [NSArray arrayWithObjects:@"Rapide S Embrogery",
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
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [[NSUserDefaults standardUserDefaults] setObject:oaFolderList forKey:@"optionsAccessoriesFolders"];
    [defaults synchronize];
    
    [self.scrollView setContentSize:CGSizeMake(768, 2000)];
    
    UIImageView *imvLogo = [[UIImageView alloc] initWithFrame:CGRectMake(384, 10, 200, 50)];
    imvLogo.image = [UIImage imageNamed:@"aml_logo_72.png"];
    [self.scrollView addSubview:imvLogo];
    
    UILabel *quatationLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 80, 200, 20)];
    [quatationLabel setText:@"Quatation"];
    quatationLabel.font = [UIFont boldSystemFontOfSize:20.0f];
    [self.scrollView addSubview:quatationLabel];
    
    //[self setInteriorFolderLabel];
    //[self setInteriorFileLabel];
    
    //[self setOptionsAccessoriesFolderLabel];
    //[self setOptionsAccessoriesFileLabel];
    
    //set parts price here
    [self retrieveJson];
    
    //[self createPDF];
}

- (void) viewWillAppear:(BOOL)animated
{
    [self retrieveJson];
    //[self setExteriorFolderLabel];
    //[self setExteriorFileLabel];
    
    //[self setInteriorFolderLabel];
    //[self setInteriorFileLabel];
    
    //[self setOptionsAccessoriesFolderLabel];
    //[self setOptionsAccessoriesFileLabel];
    for(UIView *view in [self.scrollView subviews])
        [view removeFromSuperview];
    
    UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(400, 10, 200, 100)];
    [iv setImage:[UIImage imageNamed:@"aml_logo_96"]];
    [self.scrollView addSubview:iv];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setScrollView:nil];
    [super viewDidUnload];
}
- (IBAction)share:(id)sender
{
    if(![MFMailComposeViewController canSendMail])
    {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"No E-Mail Account Setup!"
                              message: @""
                              delegate: nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
        [alert show];
        return;
    }
    MFMailComposeViewController *controller = [[MFMailComposeViewController alloc] init];
    NSString *emailSubject = [NSString localizedStringWithFormat:@"SQ PDF"];
    [controller setSubject:emailSubject];
    
    NSArray *arrayPaths =
    NSSearchPathForDirectoriesInDomains(
                                        NSDocumentDirectory,
                                        NSUserDomainMask,
                                        YES);
    NSString *path = [arrayPaths objectAtIndex:0];
    NSString* pdfFileName = [path stringByAppendingPathComponent:@"Sq.PDF"];
    
    NSData *pdfData = [NSData dataWithContentsOfFile:pdfFilePath];
    [controller addAttachmentData:pdfData mimeType:@"application/pdf" fileName:@"SQ.pdf"];
    controller.mailComposeDelegate = self;
    [self presentModalViewController:controller animated:YES];
    
}

- (IBAction)generatePDF:(id)sender
{
    //[self createPDFfromUIView:self.scrollView saveToDocumentsWithFileName:@"Sq.PDF"];
    //[self createPDFfromUIView:self.innerView saveToDocumentsWithFileName:@"Sq.PDF"];
}

-(void)createPDFfromUIView:(UIView*)aView saveToDocumentsWithFileName:(NSString*)aFilename
{
    // Creates a mutable data object for updating with binary data, like a byte array
    NSMutableData *pdfData = [NSMutableData data];
    
    // Points the pdf converter to the mutable data object and to the UIView to be converted
    UIGraphicsBeginPDFContextToData(pdfData, aView.bounds, nil);
    UIGraphicsBeginPDFPage();
    CGContextRef pdfContext = UIGraphicsGetCurrentContext();
    
    
    // draws rect to the view and thus this is captured by UIGraphicsBeginPDFContextToData
    
    [aView.layer renderInContext:pdfContext];
    
    
    // remove PDF rendering context
    UIGraphicsEndPDFContext();
    
    // Retrieves the document directories from the iOS device
    NSArray* documentDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask,YES);
    
    NSString* documentDirectory = [documentDirectories objectAtIndex:0];
    NSString* documentDirectoryFilename = [documentDirectory stringByAppendingPathComponent:aFilename];
    
    // instructs the mutable data object to write its context to a file on disk
    [pdfData writeToFile:documentDirectoryFilename atomically:YES];
    NSLog(@"documentDirectoryFileName: %@",documentDirectoryFilename);
}
/*
 -(void)createPDFfromUIView:(UIView*)aView saveToDocumentsWithFileName:(NSString*)aFilename
 {
 NSMutableData *pdfData = [NSMutableData data];
 
 
 CGRect visibleRect;
 visibleRect.origin = self.scrollView.contentOffset;
 visibleRect.size = self.scrollView.bounds.size;
 
 float theScale = 1.0 / 768;
 visibleRect.origin.x *= theScale;
 visibleRect.origin.y *= theScale;
 visibleRect.size.width *= theScale;
 visibleRect.size.height *= theScale;
 
 // Get Scrollview size
 //CGRect scrollSize = CGRectMake(0,0,self.scrollView.contentSize.width,self.scrollView.contentSize.height);
 
 CGRect scrollSize = CGRectMake(0,0,768,2000);
 
 // Points the pdf converter to the mutable data object and to the UIView to be converted
 UIGraphicsBeginPDFContextToData(pdfData, scrollSize, nil);
 UIGraphicsBeginPDFPage();
 CGContextRef pdfContext = UIGraphicsGetCurrentContext();
 
 // draws rect to the view and thus this is captured by UIGraphicsBeginPDFContextToData
 [aView.layer renderInContext:pdfContext];
 
 // remove PDF rendering context
 UIGraphicsEndPDFContext();
 
 // Retrieves the document directories from the iOS device
 NSArray* documentDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask,YES);
 
 NSString* documentDirectory = [documentDirectories objectAtIndex:0];
 NSString* documentDirectoryFilename = [documentDirectory stringByAppendingPathComponent:aFilename];
 
 // instructs the mutable data object to write its context to a file on disk
 [pdfData writeToFile:documentDirectoryFilename atomically:YES];
 NSLog(@"documentDirectoryFileName: %@",documentDirectoryFilename);
 }
 */

- (void) createPDF
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *directroyPath = nil;
    directroyPath = [documentsDirectory stringByAppendingPathComponent:@"PDF"];
    pdfFilePath = [directroyPath stringByAppendingPathComponent:@"SQ.pdf"];
    NSLog(@"PATH FOR PDF: %@",pdfFilePath);
    // check for the "PDF" directory
    NSError *error;
    if ([[NSFileManager defaultManager] fileExistsAtPath:pdfFilePath]) {
        
    } else {
        [[NSFileManager defaultManager] createDirectoryAtPath:directroyPath
                                  withIntermediateDirectories:NO
                                                   attributes:nil
                                                        error:&error];
    }
    
    CGContextRef pdfContext = [self createPDFContext:self.scrollView.bounds path:(CFStringRef)pdfFilePath];
    NSLog(@"PDF Context created");
    
    for (int i = 0 ; i< 2 ; i++)
    {
        
        // page 1
        CGContextBeginPage (pdfContext,nil);
        
        //turn PDF upsidedown
        CGAffineTransform transform = CGAffineTransformIdentity;
        transform = CGAffineTransformMakeTranslation(0, (i+1) * 910);
        transform = CGAffineTransformScale(transform, 1.0, -1.0);
        CGContextConcatCTM(pdfContext, transform);
        
        //Draw view into PDF
        [self.scrollView.layer renderInContext:pdfContext];
        CGContextEndPage (pdfContext);
        [self.scrollView setContentOffset:CGPointMake(0, (i+1) * 910) animated:NO];
        
    }
    CGContextRelease (pdfContext);
}

- (CGContextRef) createPDFContext:(CGRect)inMediaBox path:(CFStringRef) path
{
    CGContextRef myOutContext = NULL;
    CFURLRef url;
    url = CFURLCreateWithFileSystemPath (NULL, path,
                                         kCFURLPOSIXPathStyle,
                                         false);
    
    if (url != NULL) {
        myOutContext = CGPDFContextCreateWithURL (url,
                                                  &inMediaBox,
                                                  NULL);
        CFRelease(url);
    }
    return myOutContext;
}

-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
    if(result == MFMailComposeResultSent){
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Email Sent!"
                              message: @""
                              delegate: nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
        [alert show];
    }
    [self dismissModalViewControllerAnimated:YES];
    
}

-(void)retrieveJson{
    NSString *jsonUrl = @"http://alxen.com/astonmartin/configurator.json";
    NSURL *url = [NSURL URLWithString:jsonUrl];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    NSURLConnection *submitConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [submitConnection start];
}

-(void)connection:(NSURLConnection*)connection didReceiveResponse:(NSURLResponse*)response{
    jsonData = [[NSMutableData alloc] init]; // _data being an ivar
}

-(void)connection:(NSURLConnection*)connection didReceiveData:(NSData*)newData{
    [jsonData appendData:newData];
}

-(void)connection:(NSURLConnection*)connection didFailWithError:(NSError*)error{
    // Handle the error properly
}

-(void)connectionDidFinishLoading:(NSURLConnection*)connection{
    
    NSDictionary *jsonArray = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:NULL];
    NSDictionary *vanquish = [jsonArray objectForKey:@"Vanquish"];
    NSDictionary *vantage = [jsonArray objectForKey:@"Vantage V12"];
    NSDictionary *rapideS = [jsonArray objectForKey:@"RapideS"];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:vanquish forKey:@"Vanquish"];
    [defaults setObject:vantage forKey:@"VantageV12"];
    [defaults setObject:rapideS forKey:@"RapideS"];
    [defaults synchronize];
    
    [self setExteriorFolderLabel];
    [self setExteriorFileLabel];
    
    [self setInteriorFolderLabel];
    [self setInteriorFileLabel];
    
    [self setOptionsAccessoriesFolderLabel];
    //[self setOptionsAccessoriesFileLabel];
    [self setOtherCost];
    
}

-(double)getPriceByCategory:(NSString*)categoryName : (NSString*)categoryValue{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *selectedCar = [defaults stringForKey:@"SelectedCarName"];
    NSDictionary *selectedCarJSON;
    double partPrice = 0.0;
    NSDictionary *partChild;
    if([selectedCar isEqualToString:@"rapids"]){
        selectedCarJSON = [defaults objectForKey:@"RapideS"];
    }
    if([categoryName isEqualToString:@"Paint Colour"]){
        partChild = [selectedCarJSON valueForKey:@"Ext Paint Color"];
        if([categoryValue isEqualToString:@"Specials"])
            categoryValue = @"Special";
        partPrice = [[partChild valueForKey:categoryValue]doubleValue];
    }else if([categoryName isEqualToString:@"Upper"]){
        partChild = [selectedCarJSON valueForKey:@"Int Upper Paint Color"];
        partPrice = [[partChild valueForKey:categoryValue]doubleValue];
    }else if ([categoryName isEqualToString:@"Lower"]){
        partChild = [selectedCarJSON valueForKey:@"Int Lower Paint Color"];
        partPrice = [[partChild valueForKey:categoryValue]doubleValue];
    }else if ([categoryName isEqualToString:@"Seat Inner"]){
        partChild = [selectedCarJSON valueForKey:@"Seat Inner"];
        partPrice = [[partChild valueForKey:categoryValue]doubleValue];
    }else if ([categoryName isEqualToString:@"Seat Outer"]){
        partChild = [selectedCarJSON valueForKey:@"Seat Outer"];
        partPrice = [[partChild valueForKey:categoryValue]doubleValue];
    }else if ([categoryName isEqualToString:@"Door"]){
        partChild = [selectedCarJSON valueForKey:@"Door"];
        partPrice = [[partChild valueForKey:categoryValue]doubleValue];
    }
    return partPrice;
}

-(double)getPriceByDetail:(NSString*)detailName : (NSString*)detailValue{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *selectedCar = [defaults stringForKey:@"SelectedCarName"];
    NSDictionary *selectedCarJSON;
    double partPrice = 0.0;
    NSDictionary *partChild;
    if([selectedCar isEqualToString:@"rapids"]){
        selectedCarJSON = [defaults objectForKey:@"RapideS"];
    }
    if ([detailName isEqualToString:@"Wheel Type"]){
        partChild = [selectedCarJSON valueForKey:@"Wheel Type"];
        partPrice = [[partChild valueForKey:detailValue]doubleValue];
    }else if([detailName isEqualToString:@"Caliper Colour"]){
        partPrice = [[selectedCarJSON valueForKey:@"Caliper Color"]doubleValue];
    }else if ([detailName isEqualToString:@"Upper Stitch"]){
        partChild = [selectedCarJSON valueForKey:@"Upper Stitch"];
        NSArray *temp = [detailValue componentsSeparatedByString:@" "];
        partPrice = [[partChild valueForKey:temp[0]]doubleValue];
    }else if ([detailName isEqualToString:@"Lower Stitch"]){
        partChild = [selectedCarJSON valueForKey:@"Lower Stitch"];
        NSArray *temp = [detailValue componentsSeparatedByString:@" "];
        partPrice = [[partChild valueForKey:temp[0]]doubleValue];
    }else if([detailName isEqualToString:@"Facia"]){
        partChild = [selectedCarJSON valueForKey:@"Facia"];
        NSArray *temp = [detailValue componentsSeparatedByString:@" "];
        if([temp[1] isEqualToString:@"Tamoash"])
            partPrice = [[partChild valueForKey:@"Tamo Ash"]doubleValue];
        else
            partPrice = [[partChild valueForKey:temp[1]]doubleValue];
    }
    return partPrice;
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"OK"])
    {
        UITextField *username = [alertView textFieldAtIndex:0];
        name = [username text];
    }
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 110, 500, 20)];
    [nameLabel setText:[NSString stringWithFormat:@"Name of Customer: %@",name]];
    [self.scrollView addSubview:nameLabel];
    
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"dd MMM yyyy"];
    
    UILabel *dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 140, 200, 20)];
    [dateLabel setText:[NSString stringWithFormat:@"Date: %@",[df stringFromDate:[NSDate date]]]];
    [self.scrollView addSubview:dateLabel];
}
-(void)getName
{
    UIAlertView *av = [[UIAlertView alloc]initWithTitle:@"Name" message:@"Please enter your name:" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    av.alertViewStyle = UIAlertViewStylePlainTextInput;
    [av setDelegate:self];
    [av show];
}
-(double)getCarBasePrice{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *selectedCar = [defaults stringForKey:@"SelectedCarName"];
    NSDictionary *selectedCarJSON;
    double basePrice = 0.0;
    if([selectedCar isEqualToString:@"rapids"]){
        selectedCarJSON = [defaults objectForKey:@"RapideS"];
        basePrice = [[selectedCarJSON valueForKey:@"Base"]doubleValue];
    }
    return basePrice;
}

@end
