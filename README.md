# Compiling On Desktop
Firstly, install Haxe. Then open up your Terminal and run
```
haxelib install lime
haxelib install openfl
haxelib install flixel
haxelib install flixel-ui
haxelib install flixel-addons
haxelib install git djFlixel https://github.com/john32b/djFlixel.git
```
Then
```haxelib set lime 7.7.0```

And then
```haxelib run lime setup```

Now if you wanna build a debug build use
```lime test windows/mac/linux/html5 -debug```

And for release builds
```lime test windows/mac/linux/html5 -release```

The game will be built in the export folder in the project root.

Note that HTML5 builds are broken ATM!

# Compiling On Android
*Note: Mobile support is a WIP, and you'll need the latest Java JDK.*

#### Setup
Install Android Studio. Then go [here](https://developer.android.com/ndk/downloads/older_releases) and download Android NDK **Revision 15c**. Put the folder somewere, preferably your C drive.
Launch Android Studio and follow the prompts to install it. Then go to Preferences > Appearance And Behavior > System Settings > Android SDK and copy the Android SDK Location.
In the project root, run ```lime setup android```. Paste the path to the Android SDK and press enter, then type the path to where you put the NDK and press enter again.
You are ready to build the game for Android.

#### Compiling
Run ```lime test android```. Building will take a while for the first time. Go take a nap, eat a meal, or go run some errands.

Afterwards the game will be built in ```export/android/bin/app/build/outputs/apk```.
