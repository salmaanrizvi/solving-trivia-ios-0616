//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self solveTrivia];
    
    return YES;
}

- (NSString *)solveTrivia {
    
    NSDictionary *states = @{@"Alabama":        @"Montgomery",
                             @"Montana":        @"Helena",
                             @"Alaska":         @"Juneau",
                             @"Nebraska":       @"Lincoln",
                             @"Arizona":        @"Phoenix",
                             @"Nevada":         @"Carson City",
                             @"Arkansas":       @"Little Rock",
                             @"New Hampshire":  @"Concord",
                             @"California":     @"Sacramento",
                             @"New Jersey":     @"Trenton",
                             @"Colorado":       @"Denver",
                             @"New Mexico":     @"Santa Fe",
                             @"Connecticut":    @"Hartford",
                             @"New York":       @"Albany",
                             @"Delaware":       @"Dover",
                             @"North Carolina": @"Raleigh",
                             @"Florida":        @"Tallahassee",
                             @"North Dakota":   @"Bismarck",
                             @"Georgia":        @"Atlanta",
                             @"Ohio":           @"Columbus",
                             @"Hawaii":         @"Honolulu",
                             @"Oklahoma":       @"Oklahoma City",
                             @"Idaho":          @"Boise",
                             @"Oregon":         @"Salem",
                             @"Illinois":       @"Springfield",
                             @"Pennsylvania":   @"Harrisburg",
                             @"Indiana":        @"Indianapolis",
                             @"Rhode Island":   @"Providence",
                             @"Iowa":           @"Des Moines",
                             @"South Carolina": @"Columbia",
                             @"Kansas":         @"Topeka",
                             @"South Dakota":   @"Pierre",
                             @"Kentucky":       @"Frankfort",
                             @"Tennessee":      @"Nashville",
                             @"Louisiana":      @"Baton Rouge",
                             @"Texas":          @"Austin",
                             @"Maine":          @"Augusta",
                             @"Utah":           @"Salt Lake City",
                             @"Maryland":       @"Annapolis",
                             @"Vermont":        @"Montpelier",
                             @"Massachusetts":  @"Boston",
                             @"Virginia":       @"Richmond",
                             @"Michigan":       @"Lansing",
                             @"Washington":     @"Olympia",
                             @"Minnesota":      @"St. Paul",
                             @"West Virginia":  @"Charleston",
                             @"Mississippi":    @"Jackson",
                             @"Wisconsin":      @"Madison",
                             @"Missouri":       @"Jefferson City",
                             @"Wyoming":        @"Cheyenne"};
    
    for (NSString *state in states) {
        NSString *lowerCaseCapital = [states[state] lowercaseString];
        NSString *lowerCaseState = [state lowercaseString];
        NSString *unformattedCapital = [lowerCaseCapital stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *unformattedState = [lowerCaseState stringByReplacingOccurrencesOfString:@" " withString:@""];
        
        NSLog(@"%@, %@", states[state], state);
        
        NSString *reducedState = unformattedState;
        for (NSUInteger i = 0; i < [unformattedCapital length]; i++) {
            NSString *character = [NSString stringWithFormat:@"%C", [unformattedCapital characterAtIndex:i]];
            NSLog(@"%@", character);
            reducedState = [reducedState stringByReplacingOccurrencesOfString:character withString:@""];
        }
        
        NSLog(@"%@", reducedState);
        if ([unformattedState isEqualToString:reducedState]) {
            return state;
        }
    }
    
    return @"";
}

@end
