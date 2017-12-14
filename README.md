# moui-nanovg-example

This project demonstrates how to build a cross-platform [moui](https://github.com/ollix/moui) app that runs [NanoVG](https://github.com/memononen/nanovg)'s demo. Currently, this project implements iOS, macOS, and Android targets. The iOS and macOS targets adopt Apple's Metal as NanoVG's backend, while the Android target uses the default OpenGL backend.

## Generate Xcode projects

A moui app uses [CMake](https://cmake.org) to generate the Xcode project for
building the iOS and macOS app as follow:

    # For iOS
    cd ios
    # For macOS
    cd mac

    # Generates the Xcode project for out-of-source builds
    cmake -H. -Bbuild -GXcode

Then you can open the generated Xcode project in the `build` directory to build
and run the demo app.

## Build the Android target

The `android` directory is the root of a normal Android Studio 3.0 project configured with Gradle and CMake build system. Thus you can simply build and
run the app in Android Studio or through command line.
