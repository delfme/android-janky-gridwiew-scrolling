import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(

  ));
}

class MyApp extends StatelessWidget {

  MyApp({Key? key}) : super(key: key);
  final _messageController = TextEditingController();

  final _focusNode = FocusNode();
  final List<String> items = List<String>.generate(62, (i) => '$i');



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Janky scrolling issue'),
        ),
        body: Center(

          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
                Expanded(

                  child:
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return GridTile(
                        child: Image.asset('assets/'+items[index] + '.jpg'),
                      );

                 }
                ),
            ),
         ],
        ),
      ),

    ),
    ),
    );
}
}




