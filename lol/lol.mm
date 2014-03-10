#line 1 "/Users/dengjiehao/Desktop/lol/lol/lol.xm"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
static id __sb = nil;

#include <logos/logos.h>
#include <substrate.h>
@class SpringBoard; 
static void (*_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$)(SpringBoard*, SEL, id); static void _logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$(SpringBoard*, SEL, id); static id (*_logos_orig$_ungrouped$SpringBoard$init)(SpringBoard*, SEL); static id _logos_method$_ungrouped$SpringBoard$init(SpringBoard*, SEL); static void (*_logos_orig$_ungrouped$SpringBoard$alertView$clickedButtonAtIndex$)(SpringBoard*, SEL, UIAlertView *, NSInteger); static void _logos_method$_ungrouped$SpringBoard$alertView$clickedButtonAtIndex$(SpringBoard*, SEL, UIAlertView *, NSInteger); static id _logos_meta_method$_ungrouped$SpringBoard$sharedBoard(Class, SEL); 

#line 5 "/Users/dengjiehao/Desktop/lol/lol/lol.xm"


static void _logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$(SpringBoard* self, SEL _cmd, id application) {
    _logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$(self, _cmd, application);
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"大家好"message:@"這是我的第一個開發的越獄插件"delegate:self cancelButtonTitle:@"感謝CCTV"otherButtonTitles:nil];
[alert show];
[alert release];
}

static id _logos_method$_ungrouped$SpringBoard$init(SpringBoard* self, SEL _cmd) {
    __sb = self;
    return _logos_orig$_ungrouped$SpringBoard$init(self, _cmd);
}

static void _logos_method$_ungrouped$SpringBoard$alertView$clickedButtonAtIndex$(SpringBoard* self, SEL _cmd, UIAlertView * alertView, NSInteger buttonIndex) {

}



static id _logos_meta_method$_ungrouped$SpringBoard$sharedBoard(Class self, SEL _cmd) {
    return __sb;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SpringBoard = objc_getClass("SpringBoard"); Class _logos_metaclass$_ungrouped$SpringBoard = object_getClass(_logos_class$_ungrouped$SpringBoard); MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(applicationDidFinishLaunching:), (IMP)&_logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$, (IMP*)&_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$);MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(init), (IMP)&_logos_method$_ungrouped$SpringBoard$init, (IMP*)&_logos_orig$_ungrouped$SpringBoard$init);MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(alertView:clickedButtonAtIndex:), (IMP)&_logos_method$_ungrouped$SpringBoard$alertView$clickedButtonAtIndex$, (IMP*)&_logos_orig$_ungrouped$SpringBoard$alertView$clickedButtonAtIndex$);{ const char *_typeEncoding = " @@: "; class_addMethod(_logos_metaclass$_ungrouped$SpringBoard, @selector(sharedBoard), (IMP)&_logos_meta_method$_ungrouped$SpringBoard$sharedBoard, _typeEncoding); }} }
#line 29 "/Users/dengjiehao/Desktop/lol/lol/lol.xm"
