#import "SingletonThree.h"

@implementation SingletonThree

static SingletonThree *singleInstance;

- (instancetype)init {
    self = [super init];
    if (self) {
        if (singleInstance) {
            return singleInstance;
        } else {
            singleInstance = self;
        }
    }
    return self;
}

+ (void)someWorkOnData {
    singleInstance.data = @"some work";
}

@end
