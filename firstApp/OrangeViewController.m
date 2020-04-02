//
//  OrangeViewController.m
//  firstApp
//
//  Created by Diego Sebastián Monteagudo Díaz on 4/2/20.
//  Copyright © 2020 Diego Sebastián Monteagudo Díaz. All rights reserved.
//

#import "OrangeViewController.h"

@interface OrangeViewController ()

@end

@implementation OrangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Orange Screen";
    UISearchController *searchBar = [[UISearchController alloc] initWithSearchResultsController:nil];
    self.navigationItem.searchController = searchBar;
    self.navigationItem.titleView = searchBar.searchBar;
    // Do any additional setup after loading the view.
}
- (void)viewWillDisappear:(BOOL)animated {
    self.navigationItem.searchController = nil;
   

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier  isEqual: @"Green View"]) {
        segue.destinationViewController.view.backgroundColor = [UIColor greenColor];
    } else if ([segue.identifier  isEqual: @"Blue View"]) {
           segue.destinationViewController.view.backgroundColor = [UIColor blueColor];
    } else
        if ([segue.identifier  isEqual: @"SkyBlue View"]) {
            segue.destinationViewController.view.backgroundColor = [UIColor systemTealColor];
    } else
        if ([segue.identifier  isEqual: @"Red View"]) {
            segue.destinationViewController.view.backgroundColor = [UIColor redColor];
    }

}
- (IBAction)goToBlueSky:(id)sender {
    [self performSegueWithIdentifier:@"BlueSky View" sender:sender];
}
- (IBAction)goToGreenScree:(id)sender {
    [self performSegueWithIdentifier:@"Green View" sender:sender];
}
- (IBAction)goToRedScreen:(id)sender {
    [self performSegueWithIdentifier:@"Red View" sender:sender];
}
- (IBAction)goToBlueScreen:(id)sender {
    [self performSegueWithIdentifier:@"Blue View" sender:sender];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
