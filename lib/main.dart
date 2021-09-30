import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Iot Alliance Project")),
        ),
     body: Column(
       children: [
         Image.asset("images/srm1.png"),
         Text("Welcome $name",style: TextStyle(fontSize: 28),),
         Padding(
           padding: const EdgeInsets.all(24.0),
           child: TextField(
             decoration: InputDecoration(hintText: "Enter your name"),
             onChanged: (value) {
               name = value;
               setState(() {});
             },
           ),
         ),
         SizedBox(
           height: 20,
         ),
         ElevatedButton(
             child: Text("Click",style: TextStyle(fontSize: 24),),
             onPressed: () async {
               return await showDialog(context: context,builder: (BuildContext context){
                 return AlertDialog(
                   content: Text("Hello $name!"),
                   actions: <Widget>[
                     TextButton(onPressed: (){
                       Navigator.of(context).pop();
                     }, child: Text("Okay"))
                   ],
                 );
               });
             },
         )
       ],
     )
    );
  }
}
