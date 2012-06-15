//TSSLauncher Application copyright © 2012 Modtech LLC
//This application will manage the SuperTSS application (© modtech)
//Written by Ethan Laur (phyrrus9) <phyrrus9@gmail.com>
#import <UIKit/UIKit.h>
#include <fstream>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIButton *disable;
@property (retain, nonatomic) IBOutlet UIButton *enable;
- (IBAction)startbutton:(id)sender;
- (IBAction)enableauto:(id)sender;
- (IBAction)disableauto:(id)sender;
@end
