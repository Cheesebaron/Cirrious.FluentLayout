Bla bla bla needs more information


```
//textView width
View.AddConstraint (NSLayoutConstraint.Create (
    textView, NSLayoutAttribute.Width, 
    NSLayoutRelation.Equal, null, 
    NSLayoutAttribute.NoAttribute, 0, 300));
 
//textView top 
View.AddConstraint (NSLayoutConstraint.Create (
    textView, NSLayoutAttribute.Top, 
    NSLayoutRelation.Equal, View, 
    NSLayoutAttribute.Top, 1, 100));
    
//textView left
View.AddConstraint (NSLayoutConstraint.Create (
    textView, NSLayoutAttribute.Left, 
    NSLayoutRelation.Equal, View, 
    NSLayoutAttribute.Left, 1, 10));
```

This helps a bit positioning the `UIVIew`s, however it does add a substantial amount of code, and the piece of code above only sets 3 constraints, which we
would also need to set for the other `UIView`. So here comes the point of this project. FluentLayout simplifies the process of adding constraints compared to the API iOS provides. Here is a sample of what it would look like for the two `UIView`s.
