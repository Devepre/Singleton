#import "SingletonTwo.h"

@implementation SingletonTwo

static SingletonTwo *singleInstance;

+ (void)initialize
{
    if (self == [SingletonTwo class]) {
        singleInstance = [[SingletonTwo alloc] init];
    }
}

+ (SingletonTwo *)sharedInstance {
    return singleInstance;
}

+ (void)someWorkOnData {
    singleInstance.data = @"some work";
}

@end
