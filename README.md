# LevitateView

LevitateView is a `framework` designed to enhance your iOS applications with an interactive view element at the bottom of the screen when you scroll down. This view allows users to quickly scroll back to the top of the view when tapped, improving navigation and user experience.<br>

### Features<br>

Scroll-to-Top Button: A view that appears when scrolling down, enabling users to quickly return to the top of the view with a single tap.
Customizable Design: Easily customize the appearance of the scroll-to-top button, including colors, icons, and animations.
Smooth Animations: Provides a smooth scrolling experience with customizable animation options.<br>

### Requirements
**iOS** 14.0+ <br>
**Swift** 5.0+

### Example
Here's an example of how to use LevitateView in your project:

```swift
import SwiftUI
import LevitateView

struct ContentView: View {
    
    private let dataModel = LevitatingViewModel(image: Image(systemName: "arrow.up"),
                                             levitateBottomPadding:20,
                                             levitateScrollOffset:250,
                                             colorBackground: .red,
                                             colorForeground:.white)
    
    var body: some View {
        LevitatingView(content: MockVerticalListView(),
                       dataModel: dataModel)
    }
}

#Preview {
    ContentView()
}
```

### Customization
You can customize the appearance and behavior of the scroll-to-top button by modifying the properties of the LevitatingViewModel:<br>

>**image:** The image/icon displayed on the button.<br>
>**colorForeground:** The color of the icon.<br>
>**colorBackground:** The background color of the button.<br>
>**levitateBottomPadding:** The padding from the bottom of the screen.<br>
>**levitateScrollOffset:** The offset threshold at which the button appears.<be>


### Video Demonstrations
Here are video demonstrations of LevitateView in action, showing both dark mode and light mode:

**Light Mode** <br>

[](https://github.com/Nomi-ngj/LevitateView/assets/17121200/092cdd28-8fb5-48d5-b74a-7523cca48129)

**Dark Mode** <br>

https://github.com/Nomi-ngj/LevitateView/assets/17121200/f6f19b65-601f-4aca-bf59-7b401339996c

### License <br>
LevitateView is released under the MIT license. See LICENSE for details. <br>

### Contributing<br>
Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.<br>

### Contact<br>
For any questions or suggestions, feel free to contact me at Noumanguljunejo@gmail.com.<br>
