#import "SingltoneOne.h"

@implementation SingltoneOne

static SingltoneOne *singleInstance;

+ (SingltoneOne *)sharedInstance {
    if (!singleInstance) {
        singleInstance = [[SingltoneOne alloc] init];
    }
    
    return singleInstance;
}

+ (void)someWorkOnData {
    singleInstance.data = @"some work";
}

@end
