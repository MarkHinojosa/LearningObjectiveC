//
//  ViewController.m
//  myFirstObjCApp
//
//  Created by Mark Hinojosa on 12/15/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Label.hidden = YES;
    
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav" ]];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
 
    
    // Do any additional setup after loading the view.
}


- (IBAction)Button:(id)sender {
    self.Label.hidden = NO;
    AudioServicesPlaySystemSound(soundID);
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(hideLabel) userInfo:nil repeats:NO];
}

-(void)hideLabel {
    self.Label.hidden = YES;
}
@end
