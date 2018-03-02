#import <Foundation/Foundation.h>

@interface SingltoneOne : NSObject

@property (strong, nonatomic) NSString *data;

+ (SingltoneOne *)sharedInstance;
+ (void)someWorkOnData;

@end
