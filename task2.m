#import <Foundation/Foundation.h>
#import <math.h>

const int begin = -99;
const int end = 0;

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

   int sum = 0;
   int i;
   for(i = begin; i < end; i++){
       if(i % 2 != 0){
           sum += abs(i);
       }
   }

    NSLog(@"Sum of odd digits from %i  to %i  = %i",begin, end, sum);

    [pool drain];
    return 0;
}
