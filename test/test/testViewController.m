//
//  testViewController.m
//  test
//
//  Created by lin on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "testViewController.h"


@interface testViewController ()

@end

@implementation testViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor blueColor];
        UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(100, 100, 40, 40);
        button.backgroundColor = [UIColor redColor];
        [button addTarget:self action:@selector(buttonTap:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    return self;
}

- (void) buttonTap:(id)sender
{
    [alert release];
    alert = [[UIAlertView alloc] initWithTitle:@"test" message:@"test2" delegate:nil cancelButtonTitle:@"" otherButtonTitles:@"", nil];
    [alert show];
    [self performSelector:@selector(resigFirstResponder) withObject:nil afterDelay:5];
}

- (void) resigFirstResponder
{
    [alert resignFirstResponder];
}

- (void) dealloc
{
    [alert release];
    [super dealloc];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
