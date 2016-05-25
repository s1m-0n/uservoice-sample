//
//  UVViewController.m
//  UVDemo2
//
//  Created by Austin Taylor on 9/30/13.
//  Copyright (c) 2013 UserVoice. All rights reserved.
//

#import "UVViewController.h"
#import "UserVoice.h"

@implementation UVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UVConfig *config = [UVConfig configWithSite:@"demo.uservoice.com"];
    [config identifyUserWithEmail:@"who.ever@mail.org" name:@"who ever" guid:@"1234"];
    config.showForum = NO;
    [UserVoice initialize:config];
}

- (IBAction)launchUserVoice:(id)sender {
    [UserVoice presentUserVoiceInterfaceForParentViewController:self];
}

- (IBAction)launchForum:(id)sender {
    [UserVoice presentUserVoiceForumForParentViewController:self];
}

- (IBAction)launchIdeaForm:(id)sender {
    [UserVoice presentUserVoiceNewIdeaFormForParentViewController:self];
}

- (IBAction)launchTicketForm:(id)sender {
    [UserVoice presentUserVoiceContactUsFormForParentViewController:self];
}


@end
