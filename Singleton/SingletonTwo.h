#import <Foundation/Foundation.h>

@interface SingletonTwo : NSObject

@property (strong, nonatomic) NSString *data;

+ (SingletonTwo *)sharedInstance;
+ (void)someWorkOnData;

@end
