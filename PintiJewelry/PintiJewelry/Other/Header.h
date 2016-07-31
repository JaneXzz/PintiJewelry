//
//  Header.h
//  PintiJewelry
//
//  Created by Jane on 16/7/30.
//  Copyright © 2016年 许珍珍. All rights reserved.
//

#ifndef Header_h
#define Header_h

#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define RGB0X(rgbValue) [UIColor colorWithRed: ((float)((rgbValue & 0xFF0000) >> 16)) / 255.0 \
green: ((float)((rgbValue & 0xFF00) >> 8)) / 255.0 \
blue: ((float)(rgbValue & 0xFF)) / 255.0 alpha: 1.0]


#endif /* Header_h */
