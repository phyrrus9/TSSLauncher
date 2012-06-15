//TSSLauncher Application copyright © 2012 Modtech LLC
//This application will manage the SuperTSS application (© modtech)
//Written by Ethan Laur (phyrrus9) <phyrrus9@gmail.com>
#import "ViewController.h"
using namespace std;
@interface ViewController ()

@end

@implementation ViewController
@synthesize disable;
@synthesize enable;
BOOL isFile;
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *pathToFile = @"/var/mobile/.tssenabled";
    isFile = [[NSFileManager defaultManager] fileExistsAtPath:pathToFile isDirectory:NO];
    if (isFile == NO)
        [enable setHidden:false];
    else
        [disable setHidden:false];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setEnable:nil];
    [self setDisable:nil];
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
    system("cp /Applications/TSSLauncher.app/com.modtech.tss.plist /System/Library/LaunchDaemons");
    ofstream f("/var/mobile/.tssenabled", ios::trunc);
    f << "TSS IS ENABLED" << endl;
    f.close();
    [enable setHidden:true];
    [disable setHidden:false];
}

- (IBAction)disableauto:(id)sender {
    system("rm /System/Library/LaunchDaemons/com.modtech.tss.plist");
    system("rm /var/mobile/.tssenabled");
    [disable setHidden:true];
    [enable setHidden:false];
}
- (void)dealloc {
    [enable release];
    [disable release];
    [super dealloc];
}
@end
