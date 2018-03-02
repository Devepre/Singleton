//very classic way to create Singleton

#import <Foundation/Foundation.h>

@interface SingltoneOne : NSObject

@property (strong, nonatomic) NSString *data;

+ (SingltoneOne *)sharedInstance;
+ (void)someWorkOnData;

@end
