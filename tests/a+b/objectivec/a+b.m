#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileHandle *input = [NSFileHandle fileHandleWithStandardInput];
        NSData *inputData = [input availableData];
        NSString *inputString = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];
        
        // Trim whitespace and newlines
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        // Split the input string by space
        NSArray *components = [inputString componentsSeparatedByString:@" "];
        
        if ([components count] >= 2) {
            NSInteger a = [[components objectAtIndex:0] integerValue];
            NSInteger b = [[components objectAtIndex:1] integerValue];
            NSInteger sum = a + b;
            
            NSLog(@"%ld", (long)sum);
        }
    }
    return 0;
}