import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:openai_automation/openai_automation.dart';
import '../automation_controllino.dart';

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
  const StatusIndicators({super.key});

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
