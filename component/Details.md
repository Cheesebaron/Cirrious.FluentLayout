FluentLayout provides a fluent API for constraint-based layouts in Xamarin.iOS.

You might be writing code looking a lot like this:

```
var textView = new UITextField(new RectangleF(10, 100, 300, 30));
var label = new UILabel(new RectangleF(10, 130, 300, 30));
Add(textView);
Add(label);
```

This is error prone and needs some trial and error to get your layouts laid out correctly when using a coded UI approach.

iOS 6 introduced a new layout system called constraints. Where the basic idea behind these constraints is that you specify relationships between the layouts of `UIView` objects and their attribute values. For instance you can tell one view to set its `Top` equal to the `Bottom` of another view. `UIKit` will then try to work out the layout for you at runtime.

So instead you define your `UIView`'s like so:

```
var textView = new UITextField();
var label = new UILabel();
Add(textView);
Add(label);
```

Then you add constraints for each `UIView` like this:

```
View.AddConstraints(
    textView.AtTopOf(View).Plus(100),
    textView.AtRightOf(View).Minus(10),
    textView.Width().EqualTo(300),

    label.Below(textView),
    textView.WithSameLeft(textView),
    label.Width().EqualTo(300)
);
```

The project is Open Source and can be [forked on GitHub](https://github.com/slodge/Cirrious.FluentLayout).
