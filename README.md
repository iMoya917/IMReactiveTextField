
# IMReactiveTextField

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ElunUIElements is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "IMReactiveTextField"

```
If a compile error occurs, change the varibale value in the Atomic class within the ReactiveSwift pod

```ruby

internal struct UnsafeAtomicState<State: RawRepresentable>: AtomicStateProtocol where State.RawValue == Int32 {
    internal typealias Transition = (expected: State, next: State)
#if os(macOS) || os(iOS) || os(tvOS) || os(watchOS)
    private let value: UnsafeMutablePointer<Int32>

 ..... 

```

change for 


```ruby

internal struct UnsafeAtomicState<State: RawRepresentable>: AtomicStateProtocol where State.RawValue == Int32 {
    internal typealias Transition = (expected: State, next: State)
#if os(macOS) || os(iOS) || os(tvOS) || os(watchOS)
    public let value: UnsafeMutablePointer<Int32>

 ..... 

```




## Example

```ruby
class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: ReactiveValidateTextField!
    @IBOutlet weak var enableButton: UIButton!

    .....

    override func viewDidLoad() {
        super.viewDidLoad()

    let signalEmail = emailTextField.signalReactiveTextField(typeCondition: .JLConditionTypeEmail)

 _ = Signal.combineLatest(signalEmail)
        .map({ (emailCondition) -> Bool in
            
            return  emailCondition })
        .observeResult({ (response) in
            self.enableButton.isEnabled = response.value!})
        .flatMap { (disponseResult) -> Bool? in
            self.enableButton.isEnabled = disponseResult.isDisposed
            return disponseResult.isDisposed

        }

	....

}

```


## Author

Iván Moya, idion917@gmail.com

## License

IMReactiveTextField is available under the MIT license. See the LICENSE file for more info.
