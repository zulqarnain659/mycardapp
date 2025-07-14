import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/tiger.png'),
            ),
            Text("M Zulqarnain", style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'Pacifico'),),
            Text("Flutter Developer", style: TextStyle(
                color: Colors.teal.shade100,
                fontSize: 30,
                fontFamily: 'Source Sans Pro'),),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                leading: Icon(Icons.phone),
                iconColor: Colors.teal,
                title:Text("+92 311 88 34 393", style: TextStyle(color: Colors.teal.shade900,fontFamily: 'Source Sans Pro', fontSize: 20),),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                leading: Icon(Icons.email),
                iconColor: Colors.teal,
                title:Text("mzulqarnin659@gmail.com", style: TextStyle(color: Colors.teal.shade900,fontFamily: 'Source Sans Pro', fontSize: 20),),
              ),
            )

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
