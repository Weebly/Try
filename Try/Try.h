//
//  Try.h
//  Try
//
//  Created by James Richard on 2/5/16.
//  Copyright © 2016 Weebly. All rights reserved.
//

#import <Foundation/Foundation.h>

#if TARGET_OS_MAC

//! Project version number for Try_macOS.
FOUNDATION_EXPORT double Try_macOSVersionNumber;

//! Project version string for Try_macOS.
FOUNDATION_EXPORT const unsigned char Try_macOSVersionString[];

#else

//! Project version number for Try.
FOUNDATION_EXPORT double TryVersionNumber;

//! Project version string for Try.
FOUNDATION_EXPORT const unsigned char TryVersionString[];

#endif

#import <Try/WBTry.h>
