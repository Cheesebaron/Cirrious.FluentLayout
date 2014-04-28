To get started, create some `UIView` instances as per usual, however do not add any information about how they have to lay themself out. So for instance:

```
var button = new UIButton(UIButtonType.RoundedRect);
button.SetTitle("Search", UIControlState.Normal);

var text = new UITextField() { BorderStyle = UITextBorderStyle.RoundedRect };

Add(button);
Add(text);
```

To make the constraints work you need to run:

```
View.SubviewsDoNotTranslateAutoresizingMaskIntoConstraints();
```

Now you can add your constraints using `FluentLayout` to your created views:

```
var hPadding = 10;
var vPadding = 10;
var ButtonWidth = 100;

View.AddConstraints(

        button.AtTopOf(View).Plus(vPadding),
        button.AtRightOf(View).Minus(hPadding),
        button.Width().EqualTo(ButtonWidth),

        text.AtLeftOf(View, hPadding),
        text.ToLeftOf(button, hPadding),
        text.WithSameTop(button)

    );
```

So the above code takes the `UIButton`, aligns it at the top of `View`, which comes from the `UIViewController` we are currently in, and adds some padding to that. It also aligns it at right of it with some padding, and assigns a width of 100 to the button.

For the `UITextField` it does somewhat the same, but aligns it to the left in the view and to the left of the button.

For more examples look in the samples application. You can also watch this [video tutorial explaining FluentLayout](https://www.youtube.com/watch?v=5BAuOq-FcJM).
