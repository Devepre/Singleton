#import <Foundation/Foundation.h>

@interface SingletonThree : NSObject

@property (strong, nonatomic) NSString *data;

+ (void)someWorkOnData;

@end
