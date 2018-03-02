//this implementations allows to create singletone object
//before any message can be send to the Class or object

#import <Foundation/Foundation.h>

@interface SingletonTwo : NSObject

@property (strong, nonatomic) NSString *data;

+ (SingletonTwo *)sharedInstance;
+ (void)someWorkOnData;

@end
