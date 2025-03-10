#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileHandle *input = [NSFileHandle fileHandleWithStandardInput];
        NSData *inputData = [input availableData];
        NSString *inputString = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];


        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

  
        NSArray *components = [inputString componentsSeparatedByString:@" "];
        if ([components count] != 2) {
            return 1;
        }
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        NSNumber *number1 = [formatter numberFromString:[components objectAtIndex:0]];
        NSNumber *number2 = [formatter numberFromString:[components objectAtIndex:1]];

        if (number1 == nil || number2 == nil) {
  
            return 1;
        }

        int sum = [number1 intValue] + [number2 intValue];

        printf("%d", sum);
    }
    return 0;
}
