//TSSLauncher Application copyright © 2012 Modtech LLC
//This application will manage the SuperTSS application (© modtech)
//Written by Ethan Laur (phyrrus9) <phyrrus9@gmail.com>
#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    setuid(0);
    system("whoami");
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
