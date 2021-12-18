//
//  ViewController.h
//  myFirstObjCApp
//
//  Created by Mark Hinojosa on 12/15/21.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    
    SystemSoundID soundID;
    
}

@property (weak, nonatomic) IBOutlet UILabel *Label;


- (IBAction)Button:(id)sender;

@end

