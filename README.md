<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Visualize your Controllino PLC or equivalent Arduino board in real time and create great UX/UI.
Plugin for use with the OpenAI-Automation library.

## Features

Complement your user interface with Controllino and Arduino models to monitor and acquire data from your device.

Show the input and output status indicators of your Controllino or Arduino in real time.

Shows whether an input or output has been manually forced or blocked.

Available models:

*Controllino Mini / Arduino Nano

*Controllino Maxi / Arduino Mega

*Controllino Mega / Arduino Mega

## Getting started

Previously configure your OpenAutomation library and its communication mode.
Use a ChangeNotifier-compatible state manager such as Provider or Riverpod.

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:open_automation/automation.dart';
import 'package:open_controllino/open_controllino.dart';
import 'package:provider/provider.dart';

void main() async {

  //The communication method must be configured only once before calling the status indicator widgets.
  // No need to have a connected device to perform tests.
  await MyPLC.usb.connect(usbIndex: 0, inputs: 8, outputs: 8);

  //OpenAutomation implements the ChangeNotifier class to notify changes.
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MyPLC.automation)],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Controllino Mini Example',
      home: Scaffold(
        //The image widget and the status lights widget should go in a Stack widget, always placing the image widget first
        body: Stack(
          children: [
            ControllinoMiniImage(width: 200),
            StatusIndicators(),
          ],
        ),
      ),
    );
  }
}

//For better performance it is recommended to have a separate widget for using status lights with your status manager
class StatusIndicators extends StatelessWidget {
  const StatusIndicators({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //listen to the events and redraw only this widget
    Provider.of<OpenAutomation>(context);

    return ControllinoMiniStatusLights(automation: MyPLC.automation);
  }
}

//Use the instances of your libraries as static and in a separate class
class MyPLC {
  static OpenAutomation automation = OpenAutomation.getInstance();
  static UsbCommWindows usb = UsbCommWindows(automation);
}

```

## Additional information

For use in conjunction with the OpenAI-Automation library.
For more information visit openai-automation.com
