<p align="center">
    <img src="https://github.com/KarimEbrahemAbdelaziz/AlmunasiQ/blob/master/Photos/Logo.png" width="480” max-width="90%" alt="AlmunasiQ" />
</p>

<p align="center">
    <img src="https://img.shields.io/badge/Swift-5.1-orange.svg" />
    <a href="https://cocoadocs.org/pods/AlmunasiQ/">
        <img src="http://img.shields.io/badge/Cocoapods-available-green.svg?style=flat" alt="Cocoapod" />
    </a>
    <img src="https://img.shields.io/cocoapods/v/AlmunasiQ.svg" />
    <img src="https://img.shields.io/cocoapods/l/AlmunasiQ.svg" />
    <img src="https://img.shields.io/cocoapods/p/AlmunasiQ.svg" />
</p>

**AlmunasiQ** is an elegant and easy to use Formatter based on PropertyWrapper.

- [Installation](#Installation)
- [Usage](#Usage)
- [Todo](#Todo)
- [License](#License)

# Installation

## CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate AlmunasiQ into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'AlmunasiQ', '~> 1.0.0'
```

## Swift Package Manager

1. Automatically in Xcode:

 - Click **File > Swift Packages > Add Package Dependency...**  
 - Use the package URL `https://github.com/KarimEbrahemAbdelaziz/AlmunasiQ` to add AlmunasiQ to your project.

2. Manually in your **Package.swift** file add:

```swift
.package(url: "https://github.com/KarimEbrahemAbdelaziz/AlmunasiQ", .from("1.0.0"))
```

# Usage

1. Import the AlmunasiQ in your code:

```swift
import AlmunasiQ
```

2. Define your properties like this:

```swift
struct SomeStructure {
    // AlmunasiQ support Int
    @AQCurrency(number: 0) var someNumber: Int
    
    // Or Doube 
    @AQCurrency(number: 0.0) var someNumberDobule: Double
    
    // And you can specifiy Currency (The default currency is USD)
    @AQCurrency(number: 0, currency: .EUR) var someNumberCurrency: Int
}
```

3. Now you can access the currency from Numerical values

```swift
var someStructure = SomeStructure()
someStructure.someNumberCurrency = 10

print(someStructure.someNumberDobule) // 10
print(someStructure.$someNumberDobule) // "€10.00"
```

# Todo

- [ ] Adding support for custom currency formatter.
- [ ] Adding support for different formatter (ex: Date)

# License

Copyright (c) Karim Ebrahem 2020
This package is provided under the MIT License.
