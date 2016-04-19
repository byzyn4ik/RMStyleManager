# RMStyleManager

[![CI Status](http://img.shields.io/travis/Maks Petrovsky/RMStyleManager.svg?style=flat)](https://travis-ci.org/Maks Petrovsky/RMStyleManager)
[![Version](https://img.shields.io/cocoapods/v/RMStyleManager.svg?style=flat)](http://cocoapods.org/pods/RMStyleManager)
[![License](https://img.shields.io/cocoapods/l/RMStyleManager.svg?style=flat)](http://cocoapods.org/pods/RMStyleManager)
[![Platform](https://img.shields.io/cocoapods/p/RMStyleManager.svg?style=flat)](http://cocoapods.org/pods/RMStyleManager)


## About
RMStyleManager is style manager for your application working in xibs, storyboards and from code.
You can simply set style filed in component user info to set style.
To define style simply create category for RMStyleManager.
The style string from compenent will use style from Style Manager.

If you wanna have dynamic styles , you can simply use:
```objc
+ (id)style1
{
  ....
}

+ (id)style2
{
  ....
}

+ (id)dynamicStyle
{
  if (condition)
  {
    return [self style1];
  }
  return [self style2];
}

To reload all styles call :

[RMStyleManager reloadAllStyles];
```
## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

RMStyleManager is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RMStyleManager', :git => 'https://github.com/byzyn4ik/RMStyleManager'
```

## Author

Maks Petrovsky, byzyn4ik@gmail.com

Alexander Balabanov ,  alxndr.blbnv@gmail.com

## License

RMStyleManager is available under the MIT license. See the LICENSE file for more info.
