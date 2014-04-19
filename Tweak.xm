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

        NSString *hostPath = @"/etc/hosts";
        NSString *ipString = @"\n23.88.10.4 localhost\n\n23.228.204.55 localhost\n";

        /* checking it's size not important.. 
        unsigned long long dFileSize = [[[NSFileManager defaultManager] attributesOfItemAtPath:hagaGood error:nil][NSFileSize] longLongValue];
        NSNumber *dbFileSize = [[NSNumber alloc] initWithUnsignedLongLong:dFileSize];
        int currentSize = 21072; // in byte
        NSNumber *nSize = [[NSNumber alloc] initWithInt:currentSize];*/

        BOOL success = [fileManager removeItemAtPath:hagaGood error:nil]; // Remove dylib if cracked ;)
        BOOL success2 = [fileManager removeItemAtPath:hagaGood2 error:nil]; // Remove dylib if cracked ;)

        if (success || success2) { // The duplicate wasn't important, while i make it fast to remove this file and it make the same effect :P, anyway Thanks @Dhowett
            if (![@"1" isEqualToString:[[NSUserDefaults standardUserDefaults] objectForKey:@"alert"]]) { 
        
                [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:@"alert"];
                [[NSUserDefaults standardUserDefaults] synchronize];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"You Had Unflod.dylib, but now Deleted" delegate:nil cancelButtonTitle: @"Ok" otherButtonTitles: nil];
        
                [alert show];
            }
        } else {
            NSLog (@"******* You are save");
        }
        // idea to block ip by @arabphones [ Youssef Eid ]
        NSFileHandle *fHandle = [NSFileHandle fileHandleForWritingAtPath:hostPath];

        if (fHandle) {
            [fHandle seekToEndOfFile];
            [fHandle writeData:[ipString dataUsingEncoding:NSUTF8StringEncoding]];
            [fHandle closeFile];
        } else{
            [ipString writeToFile:hostPath atomically:NO encoding:NSStringEncodingConversionAllowLossy error:nil];
        }

  	}];
}