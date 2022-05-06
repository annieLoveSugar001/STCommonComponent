

#import "STPrint.h"

@implementation STPrint

+ (instancetype)sharedInstance {
    static STPrint *module = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        module = [[[self class] alloc] init];
    });
    return module;
}

+ (void)print
{
    NSLog(@"打印了");
}
@end
