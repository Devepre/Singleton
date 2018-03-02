//transforming a class cluster into a singleton factory,
//hiding its singleton nature

#import <Foundation/Foundation.h>

@interface SingletonThree : NSObject

@property (strong, nonatomic) NSString *data;

+ (void)someWorkOnData;

@end
