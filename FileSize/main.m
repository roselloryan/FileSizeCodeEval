//
//  main.m
//  FileSize


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *someFilePath = @"/Users/roselloryan/Desktop/Screen Shot 2016-05-05 at 3.57.43 PM.png";
        
        unsigned long long fileSize = [[[NSFileManager defaultManager] attributesOfItemAtPath:someFilePath error:nil] fileSize];
        
        NSNumber *fileSizeNSN = [NSNumber numberWithUnsignedInteger:fileSize];
        NSString *fileSizeString = [fileSizeNSN stringValue];
        
        NSLog(@"%@", fileSizeString);
        
    }
    return 0;
}
