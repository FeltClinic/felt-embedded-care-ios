# Felt Embedded Care iOS SDK
Felt offers a seamless telehealth experience inside health apps. Our platform handles the full user lifecycle, including onboarding, payments, and doctor visits, ensuring a cohesive healthcare experience.

## Initialization
Primary interaction with the SDK is mediated through the `EmbeddedCare.shared` singleton.

At app launch, initialize the SDK with your SDK key using `EmbeddedCare.shared.initialize`.

### UIKit
```swift
import FeltEmbeddedCare

let feltSDKKey = "..."

class AppDelegate: UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        do {
            EmbeddedCare.shared.initalize(sdkKey: feltSDKKey)
        } catch {
            // Error will be thrown for invalid key
        }
    }
}
```

### SwiftUI
```swift
import FeltEmbeddedCare

let feltSDKKey = "..."

@main
struct ClientApp: App {

    init() {
        do {
            try EmbeddedCare.shared.initialize(sdkKey: sdkKey)
        } catch {
            // Error will be thrown for invalid key
        }
    }

}
```

## User Details
Once your app's current user has been authenticated, provide details to the SDK using `EmbeddedCare.shared.setUserDetails`.
```swift
let user = ...
EmbeddedCare.shared.setUserDetails(
    userID: user.id, email: user.email, 
    // Any custom information you want to provide
    metadata: ["firstName" : "John", "lastName": "Doe"]
)
```

If any information changes about the user or their metadata, just call `EmbeddedCare.shared.setUserDetails` with the updated information.

When a user logs out, inform the SDK by calling `EmbeddedCare.shared.clearUserDetails`.

## Component Experiences
In order to integrate Felt embedded care content alongside your app's native content, use `ComponentView`, a `UIView` subclass, or `Component`, a `SwiftUI` `View`.

See the `ComponentExperience` `enum` for available options.

### UIKit
```swift
let componentView = ComponentView(experience: .dismissableCallToAction)
self.view.addSubview(componentView)
...
```

### SwiftUI
```swift
struct MyView: View {
    var body: some View {
        Component(experience: .dismissableCallToAction)
    }
}
```

### Layout
Component contents may be loaded asynchronously, which means a component's layout can change over time. A component determines its intrinsic height based on its current width. 

Both `UIKit` and `SwiftUI` components provide the ability to specify an `onHeightUpdated` handler that allows you to react to intrinsic height changes. For example, you can use this handler to animate layout changes.

## Full Screen Experiences
Felt provides several full screen experiences you can explicitly present. See the `FullScreenExperience` `enum` for available options.
```swift
EmbeddedCare.shared.presentExperience(.splashScreen)
```
User interaction with components can automatically present full screen experiences.

## Feature Gating
You can check if a feature is enabled for the current user by calling `EmbeddedCare.shared.checkFeatureGate`. See the `FeatureGate` `enum` for available options.

For example, before displaying a component, you should call `EmbeddedCare.shared.checkFeatureGate` with the relevant feature gate to make sure the component should be displayed. 

```swift
if EmbeddedCare.shared.checkFeatureGate(.globalRollout) {
    // View logic to display `ComponentView`
}
```

## Compatiblity
The SDK has minimum version requirements of Swift 5.5 and iOS 15.


## Support

### Slack
We should have a Slack Connect setup you should be able to find us individually below or at `#<company name>-felt`

Reach out to sid (at) feltclinic.com or josh (at) feltclinic.com if you are not finding us on Slack.


### Email

* sid@feltclinic.com
* daniel@feltclinic.com
