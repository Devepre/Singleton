#import <Foundation/Foundation.h>
#import "SingltoneOne.h"
#import "SingletonTwo.h"
#import "SingletonThree.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //Testing version One
        [SingltoneOne someWorkOnData];
        NSLog(@"Data is: %@", [SingltoneOne sharedInstance].data);          //will be null !
        
        SingltoneOne *singleOne = [SingltoneOne sharedInstance];
        singleOne.data = @"Data one";
        NSLog(@"Data is: %@", [SingltoneOne sharedInstance].data);
        [[SingltoneOne sharedInstance] setData:@"Data one 2"];
        NSLog(@"Data is: %@", [SingltoneOne sharedInstance].data);
     
      //Testing version Two
        [SingletonTwo someWorkOnData];
        NSLog(@"Data is: %@", [SingletonTwo sharedInstance].data);         //will be not null !
        
        [SingletonTwo sharedInstance].data = @"Data two";
        NSLog(@"Data is: %@", [SingletonTwo sharedInstance].data);
        [SingletonTwo sharedInstance].data = @"Data two 2";
        NSLog(@"Data is: %@", [SingletonTwo sharedInstance].data);
        
        //Testing version Three
        [SingletonThree someWorkOnData];
        SingletonThree *singleThree = [[SingletonThree alloc] init];
        NSLog(@"Data is: %@", singleThree.data);                            //will be null !
        
        singleThree.data = @"Data three";
        NSLog(@"Data is: %@", singleThree.data);
        SingletonThree *singleThreeAnother = [[SingletonThree alloc] init];
        NSLog(@"Data is: %@", singleThreeAnother.data);
        
    }
    return 0;
}
