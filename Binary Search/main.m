#import <Foundation/Foundation.h>

NSMutableArray *makeArray(){
    
    NSMutableArray *oneM = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 1000000; i++){
        [oneM addObject:[NSNumber numberWithInt:i]];
    }
    return oneM;
}

int searchArray(int target, NSMutableArray *array){
    
    NSNumber *nsTarget = [NSNumber numberWithInt:target];
    for (int i = 0; i < [array count]; i++){
        if([nsTarget isEqualTo:array[i]]){
            NSLog(@"found %i",[nsTarget intValue]);
            return [nsTarget intValue];
        }
    }
    NSLog(@"could not find");
    return -1;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *myArray = makeArray();
        
        NSDate *methodStart = [NSDate date];
        
        int found = searchArray(999999, myArray);
        
        NSDate *methodFinish = [NSDate date];
        NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate: methodStart];
        
        NSLog(@"executionTime = %f", executionTime);
        
        
    }
    return 0;
}