:: Grab xpkg from http://components.xamarin.com/submit/xpkg and put contents of the zip into xpkg

xpkg\xamarin-component.exe create-manually FluentLayout-1.0.xam ^
	--name="FluentLayout" ^
	--summary="FluentLayout provides a fluent API for constraint-based layouts in Xamarin.iOS." ^
	--website="https://github.com/slodge/Cirrious.FluentLayout" ^
	--details="Details.md" ^
	--license="License.md" ^
	--getting-started="GettingStarted.md" ^
	--icon="icons/fluentlayout_128x128.png" ^
	--icon="icons/fluentlayout_512x512.png" ^
	--library="ios":"../Cirrious.FluentLayout/bin/iPhone/Debug/iPhone/Cirrious.FluentLayout.dll" ^
	--publisher "Cheesebaron"