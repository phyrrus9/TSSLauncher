//TSSLauncher Application copyright © 2012 Modtech LLC
//This application will manage the SuperTSS application (© modtech)
//Written by Ethan Laur (phyrrus9) <phyrrus9@gmail.com>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)startbutton:(id)sender {
    system("/usr/mt/tss &"); //start supertss and BG the job
}

- (IBAction)enableauto:(id)sender {
    system("cp com.modtech.tss.plist /System/Library/LaunchDaemons");
}
@end
