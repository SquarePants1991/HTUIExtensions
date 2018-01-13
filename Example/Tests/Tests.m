//
//  HTUIExtensionsTests.m
//  HTUIExtensionsTests
//
//  Created by ocean on 01/13/2018.
//  Copyright (c) 2018 ocean. All rights reserved.
//

// https://github.com/Specta/Specta
#import  <HTUIExtensions/UIColor+HTExtension.h>

SpecBegin(InitialSpecs)

describe(@"UIColor Tests", ^{

    it(@"can convert hex argb int", ^{
        UIColor * color = [UIColor colorWithARGBHex:0xffaabbcc];
        CGFloat r,g,b,a;
        [color getRed:&r green:&g blue:&b alpha:&a];
        expect(r).to.beCloseToWithin(0xa9 / 255.0, 0xab / 255.0);
        expect(g).to.beCloseToWithin(0xba / 255.0, 0xbc / 255.0);
        expect(b).to.beCloseToWithin(0xcb / 255.0, 0xcd / 255.0);
        expect(a).to.equal(1);
    });

    it(@"can convert hex rgb int", ^{
        UIColor * color = [UIColor colorWithRGBHex:0xaabbcc];
        CGFloat r,g,b,a;
        [color getRed:&r green:&g blue:&b alpha:&a];
        expect(r).to.beCloseToWithin(0xa9 / 255.0, 0xab / 255.0);
        expect(g).to.beCloseToWithin(0xba / 255.0, 0xbc / 255.0);
        expect(b).to.beCloseToWithin(0xcb / 255.0, 0xcd / 255.0);
        expect(a).to.equal(1);
    });

    it(@"can convert hex argb string", ^{
        UIColor * color = [UIColor colorWithARGBHexString:@"#ffaabbcc"];
        CGFloat r,g,b,a;
        [color getRed:&r green:&g blue:&b alpha:&a];
        expect(r).to.beCloseToWithin(0xa9 / 255.0, 0xab / 255.0);
        expect(g).to.beCloseToWithin(0xba / 255.0, 0xbc / 255.0);
        expect(b).to.beCloseToWithin(0xcb / 255.0, 0xcd / 255.0);
        expect(a).to.equal(1);
    });

    it(@"can convert hex rgb string", ^{
        UIColor * color = [UIColor colorWithRGBHexString:@"#aabbcc"];
        CGFloat r,g,b,a;
        [color getRed:&r green:&g blue:&b alpha:&a];
        expect(r).to.beCloseToWithin(0xa9 / 255.0, 0xab / 255.0);
        expect(g).to.beCloseToWithin(0xba / 255.0, 0xbc / 255.0);
        expect(b).to.beCloseToWithin(0xcb / 255.0, 0xcd / 255.0);
        expect(a).to.equal(1);
    });
});

SpecEnd

