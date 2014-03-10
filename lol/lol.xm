#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
static id __sb = nil;

%hook SpringBoard
-(void)applicationDidFinishLaunching: (id)application
{
    %orig;
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"大家好"message:@"這是我的第一個開發的越獄插件"delegate:self cancelButtonTitle:@"感謝CCTV"otherButtonTitles:nil];
[alert show];
[alert release];
}
- (id)init
{
    __sb = self;
    return %orig;
}
- (void)alertView: (UIAlertView *)alertView clickedButtonAtIndex: (NSInteger)buttonIndex
{
//　　[__sb relaunchSpringBoard];
}
%new( @@: )

+ (id)sharedBoard
{
    return __sb;
}
%end