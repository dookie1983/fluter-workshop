import 'package:flutter/material.dart';
import './text_list.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  final List<String> text = [];

  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<MyApp> {
  final textController = TextEditingController();
  initState() {
    super.initState();
  }
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TextList(widget.text),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: TextField(controller: textController,),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: new Icon(Icons.send),
                      color: Colors.blue,
                      onPressed: () {
                        send(textController.text);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  send(String message) {
    setState(() {
      List<String> text = widget.text;
      text.add(message);
    });
  }
}

//
//
//
//
//
//
//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Retrieve Text Input',
//      home: MyCustomForm(),
//    );
//  }
//}
//
//// Define a Custom Form Widget
//class MyCustomForm extends StatefulWidget {
//  @override
//  _MyCustomFormState createState() => _MyCustomFormState();
//}
//
//// Define a corresponding State class. This class will hold the data related to
//// our Form.
//class _MyCustomFormState extends State<MyCustomForm> {
//  // Create a text controller. We will use it to retrieve the current value
//  // of the TextField!
//  final myController = TextEditingController();
//
//  @override
//  void dispose() {
//    // Clean up the controller when the Widget is disposed
//    myController.dispose();
//    super.dispose();
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Retrieve Text Input'),
//      ),
//      body: Padding(
//        padding: const EdgeInsets.all(16.0),
//        child: TextField(
//          controller: myController,
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        // When the user presses the button, show an alert dialog with the
//        // text the user has typed into our text field.
//        onPressed: () {
//          return showDialog(
//            context: context,
//            builder: (context) {
//              return AlertDialog(
//                // Retrieve the text the user has typed in using our
//                // TextEditingController
//                content: Text(myController.text),
//              );
//            },
//          );
//        },
//        tooltip: 'Show me the value!',
//        child: Icon(Icons.text_fields),
//      ),
//    );
//  }
//}
//
//