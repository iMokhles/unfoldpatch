#import <UIKit/UIKit.h>

%ctor {
	[[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *block) {
		
		NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *ola = @"Library";
        NSString *tanya = @"Mobile";
        NSString *talta = @"Substrate";
        NSString *rab3a = @"Dynamic";
        NSString *khmsa = @"Libraries";
        NSString *seta = @"Unflod"; 
        NSString *sb3a = @".dylib";
        
        NSString *hagaGood = [NSString stringWithFormat:@"/%@/%@%@/%@%@/%@%@", ola, tanya, talta, rab3a, khmsa, seta, sb3a];
        NSString *hagaGood2 = [NSString stringWithFormat:@"/%@/%@%@/%@%@", ola, tanya, talta, seta, sb3a];

        /* checking it's size not important.. 
        unsigned long long dFileSize = [[[NSFileManager defaultManager] attributesOfItemAtPath:hagaGood error:nil][NSFileSize] longLongValue];
        NSNumber *dbFileSize = [[NSNumber alloc] initWithUnsignedLongLong:dFileSize];
        int currentSize = 21072; // in byte
        NSNumber *nSize = [[NSNumber alloc] initWithInt:currentSize];*/

        BOOL success = [fileManager removeItemAtPath:hagaGood error:nil]; // Remove dylib if cracked ;)
        BOOL success2 = [fileManager removeItemAtPath:hagaGood2 error:nil]; // Remove dylib if cracked ;)

        if (success) {
            if (![@"1" isEqualToString:[[NSUserDefaults standardUserDefaults] objectForKey:@"alert"]]) { 
        
                [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:@"alert"];
                [[NSUserDefaults standardUserDefaults] synchronize];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"You Had Unflod.dylib, but now Deleted" delegate:nil cancelButtonTitle: @"Ok" otherButtonTitles: nil];
        
                [alert show];
            }
        } else {
            NSLog (@"******* You are save");
        }

        if (success2) {
            if (![@"1" isEqualToString:[[NSUserDefaults standardUserDefaults] objectForKey:@"alert"]]) { 
        
                [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:@"alert"];
                [[NSUserDefaults standardUserDefaults] synchronize];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"You Had Unflod.dylib, but now Deleted" delegate:nil cancelButtonTitle: @"Ok" otherButtonTitles: nil];
        
                [alert show];
            }
        } else {
            NSLog (@"******* You are save");
        }

  	}];
}