#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char input[100];
        while (fgets(input, 100, stdin) != NULL) {
            NSString *inputString = [NSString stringWithUTF8String:input];
            NSArray *numbers = [inputString componentsSeparatedByString:@" "];
            
            int a = [numbers[0] intValue];
            int b = [numbers[1] intValue];
            
            int sum = a + b;
            NSLog(@"%d", sum);
        }
    }
    return 0;
}
