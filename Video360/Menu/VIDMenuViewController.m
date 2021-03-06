//
//  VIDMenuViewController.m
//  Video360
//
//  Created by Jean-Baptiste Rieu on 26/05/13.
//  Copyright (c) 2013 Video360 Developper. All rights reserved.
//

#import "VIDMenuViewController.h"

#import "VIDMenu2ViewController.h"

@interface VIDMenuViewController ()

@end

@implementation VIDMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.imageNames = @[@"menu01_A_ipad.png", @"menu01_B_ipad.png", @"menu01_C_ipad.png"];
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark button management
- (IBAction)buttonZone1Touched:(id)sender {
    // Paris
    [self launchVideoWithName:@"demo"];
}

- (IBAction)buttonZone2Touched:(id)sender {
    [self gotToMenu2];    
}

- (IBAction)buttonZone3Touched:(id)sender {
    [self openURLWithString:@"http://www.google.fr"];
}

- (IBAction)buttonZone4Touched:(id)sender {
    // Parc expo faible qualité
    [self launchVideoWithName:@"demo2"];
}

- (IBAction)buttonZone5Touched:(id)sender {
    // Musée
    [self launchVideoWithName:@"demo3"];
}

- (IBAction)buttonZone6Touched:(id)sender {
    // demo 1 meilleure qualité
   [self launchVideoWithName:@"Demo-mp4-H264-8Mbs"];
}

-(void) gotToMenu2
{
    VIDMenu2ViewController *menu2Controller;
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    if (screenBounds.size.height == 568) {
        // iPhone 5 and more (?) 4 inch
       menu2Controller = [[VIDMenu2ViewController alloc] initWithNibName:@"VIDMenu2ViewController_4inch" bundle:[NSBundle mainBundle]];
    } else {
        // iPhone 4 and under
        menu2Controller = [[VIDMenu2ViewController alloc] initWithNibName:@"VIDMenu2ViewController" bundle:[NSBundle mainBundle]];
    }
    

    
    if(![[self presentedViewController] isBeingDismissed])
    {
        [self presentViewController:menu2Controller animated:YES completion:nil];
    }
}




@end
