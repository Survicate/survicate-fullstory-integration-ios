# Survicate - FullStory integration for iOS

A thin library designed for seamless integration between [Survicate](https://survicate.com/)
and [FullStory](https://www.fullstory.com/) on iOS. It automatically sends survey answers coming
from Survicate SDK as FullStory events that can be previewed directly in the FullStory panel.

## Adding the dependency

### Swift Package Manager
To integrate Survicate FullStory integration into your Xcode project using Swift Package Manager, specify it in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/Survicate/survicate-fullstory-integration-ios", from: "1.0.0")
]
```

> Note that both Survicate and FullStory SDKs are added as dependencies to this package, so you don't need to add them manually.

## Usage

> Note that for the plugin to function properly, the FullStory integration must be enabled in the
> Survicate panel.
> Also, it is essential that both the Survicate and FullStory SDKs have been initialized correctly
> as outlined in their respective documentation:
> - [Survicate developer docs](https://developers.survicate.com/mobile-sdk/ios/)
> - [FullStory developer docs](https://help.fullstory.com/hc/en-us/articles/360042772333-Getting-Started-with-iOS-Data-Capture)

In order to activate the integration library, go to the place in your app where you initialize the
Survicate SDK and register `SurvicateFullStoryIntegration` as an event listener:

```swift
import Survicate
import survicate_fullstory_integration

SurvicateSdk.shared.initialize()
SurvicateSdk.shared.addListener(SurvicateFullStoryIntegration())
```

That's it. You can use all FullStory and Survicate features as usual. Every survey answer will be
automatically logged to the FullStory using the `FS.event` method.

## Issues

Got an Issue?

To make things more streamlined, we’ve transitioned our issue reporting to our customer support
platform. If you encounter any bugs or have feedback, please reach out to our customer support team.
Your insights are invaluable to us, and we’re here to help ensure your experience is top-notch!

Contact us via Intercom in the application, or drop us an email at: [support@survicate.com]

Thank you for your support and understanding!

## License

```
MIT License

Copyright (c) 2025 Survicate S.A.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

NOTE: This SDK integrates with the proprietary FullStory SDK, which is
distributed separately by FullStory, Inc. Use of the FullStory SDK is subject
to FullStory’s license and terms of service available at:
https://www.fullstory.com/legal/terms-and-conditions/ This SDK is licensed under the MIT License.

⚠️ Important: This SDK integrates with the proprietary FullStory SDK,
which is distributed separately by FullStory, Inc.

Use of the FullStory SDK is governed exclusively by FullStory’s own license
and terms of service, available at:
https://www.fullstory.com/legal/terms-and-conditions/.

This repository does not distribute or re-license the FullStory SDK.
```
