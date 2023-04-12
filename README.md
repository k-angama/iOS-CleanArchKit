# iOS-CleanArchKit

CleanArchKit is an iOS framework developed in Swift that implements Clean Architecture in a project using the MVVM (Model-View-ViewModel) pattern, as well as Router for managing navigation between screens. It provides base classes for view controllers, view models, and routers, as well as protocols for input and output of view models.


## Requirements

CleanArchKit requires the following:

* Xcode 11.0 or later
* Swift 5.0 or later
* iOS 11.0 or later


## Installation

To install this framework using [CocoaPods](https://cocoapods.org), add the following line to your Podfile:

```ruby
pod 'CleanArchKit'
```

Then run `pod install` in your terminal.


## Usage

To use this framework in your project, you can follow the steps below:

1. Import the framework in the Swift file where you want to use it:

```swift
import CleanArchKit
```

2. Declare a class inheriting from `BaseViewController`, specifying the type of ViewModel you want to use, conforming to the `ViewModelProtocol` protocol. For example:

```swift
class MyViewController: BaseViewController<MyViewModel> {
    // ...
}
```

Make sure your ViewModel (`MyViewModel` in this example) implements the required InputProtocol, OutputProtocol, and Router protocols.

3. Implement the required methods in your view class (`MyViewController` in this example) to configure bindings, observers, and user interface, as needed:

```swift
class MyViewController: BaseViewController<MyViewModel> {
    
    // Setup bindings
    override func setupBindings() {
        // Configure bindings here
    }
    
    // Setup des observateurs
    override func setupObservers() {
        // Configure observers here
    }
    
    // Setup de l'interface utilisateur
    override func setupUI() {
        // Configure user interface here
    }
    
    // ...
}
```

4. Implement the required methods in your ViewModel (`MyViewModel` in this example) for configuring your business logic:

```swift
class MyViewModel: BaseViewModel<MyRouter, MyInput, MyOutput> {
    
    // Setup business logic
    override func setup() {
        // Configure business logic here
    }
    
    // Exécution des cas d'utilisation
    override func exeUseCase() {
        // Execute use cases here
    }
    
    // Configuration des observateurs
    override func observers() {
        // Configure observers here
    }
    
    // ...
}
```

5. Implement the required methods in your Router (`MyRouter` in this example) for managing navigation between screens:

```swift
class MyRouter: BaseRouter<MyRoute> {
    
    // Transition between screens
    override func transition(route: MyRoute) {
         // Handle navigation between screens here
    }
    
    // ...
}
```

6. Create classes conforming to the `InputProtocol` and `OutputProtocol` protocols:

```swift
import CleanArchKit

struct MyInput: InputProtocol {
    // Implement input properties here
}

struct MyOutput: OutputProtocol {
    // Implement output properties here
}

class MyViewModel: BaseViewModel<MyRouter, MyInput, MyOutput> {
    // Implement setup, exeUseCase, and observers methods here
}
```

You can create your own struct conforming to the `InputProtocol` and `OutputProtocol` protocols to define input and output data for your view models. 

7. Define your use cases by creating classes conforming to the UseCase protocol:

```swift
struct MyUseCase: UseCase {
    func execute(params: String) -> Bool {
    // Implement your logic here
    }
}
```

8. Implement dependency injection using the DIProtocol:

```swift
import Foundation
extension MainViewController {
    @objc func di() {
        self.viewModel.input.checkCredentialUseCase = CheckCredentialUseCase(loginAPI: RegistrationAPI())
        self.viewModel.input.checkValidEmailUseCase = CheckValidEmailUseCase()
    }
}
```

You can use the `DIProtocol` to define a method `di()` in your view controllers. In the example above, `MainViewController` conforms to `DIProtocol` and implements the `di()` method to inject dependencies for the `CheckCredentialUseCase` and `CheckValidEmailUseCase` into the view model's input properties.

Note: Dependency injection is an important concept in Clean Architecture that helps to decouple components and promote testability. 


## Example

An example project using CleanArchKit can be found in the Example directory of this repository. This example illustrates how to implement Clean Architecture with MVVM and Router using CleanArchKit in an iOS project.


## Contributing

Contributions to CleanArchKit are welcome! If you find any issues or have suggestions for improvement, please feel free to open an issue or submit a pull request.


## Author

k.angama, karim.angama@gmail.com

## License

CleanArchKit is available under the MIT license. See the LICENSE file for more info.
