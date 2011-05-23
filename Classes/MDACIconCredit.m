//
//  MDACIconCredit.m
//  MDAboutController
//
//  Created by Dimitri Bouniol on 5/23/11.
//  Copyright 2011 Mochi Development Inc. All rights reserved.
//
//  Copyright (c) 2010 Dimitri Bouniol, Mochi Development, Inc.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//  Also, it'd be super awesome if you left in the credit line generated
//  automatically by the code that links back to this page :)
//

#import "MDACIconCredit.h"

@implementation MDACIconCredit

@synthesize appName, versionString, icon;

- (id)initWithAppName:(NSString *)aName versionString:(NSString *)aVersionString icon:(UIImage *)anImage
{
    if ((self = [super initWithType:@"Icon"])) {
        self.appName = aName;
        self.versionString = aVersionString;
        self.icon = anImage;
    }
    return self;
}

- (id)initWithType:(NSString *)aType
{
    return [self initWithAppName:nil versionString:nil icon:nil];
}

+ (id)creditWithType:(NSString *)aType
{
    return [self iconCreditWithAppName:nil versionString:nil icon:nil];
}

+ (id)iconCreditWithAppName:(NSString *)aName versionString:(NSString *)aVersionString icon:(UIImage *)anImage;
{
    return [[[self alloc] initWithAppName:aName versionString:aVersionString icon:anImage] autorelease];
}

- (void)dealloc {
    [appName release];
    [versionString release];
    [icon release];
    [super dealloc];
}

@end