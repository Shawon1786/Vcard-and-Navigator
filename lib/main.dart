import 'package:drawer/page-2.dart';
import 'package:drawer/page-3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD980FA),
      appBar: AppBar(
        backgroundColor: Color(0xffA3CB38),
        title: Text('Visiting Card'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('Images/1.JPG'),
                radius: 100,
              ),
              Text(
                'MD. Shawon Hosen',
                style: TextStyle(
                    fontSize: 40,
                    color: Color(0xff1B1464),
                    fontFamily: 'Luxury',
                  letterSpacing: 4,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Flutter Android Developer',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Luxury',
                  letterSpacing: 3,
                ),
              ),
              SizedBox(
                child: Divider(
                  thickness: 5,
                  color: Colors.black,
                ),
              ),
              Card(
                color: Color(0xff9980FA),
                margin: EdgeInsets.all(20),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>page_2() ));
                  },
                  title: Text('Shawonhosen7@gmail.com'),
                  leading: Icon(Icons.email),
                ),
              ),
              Card(
                color: Color(0xff12CBC4),
                margin: EdgeInsets.all(20),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>page_3() ));
                  },
                  title: Text('+8801763835714'),
                  leading: Icon(Icons.phone_android_outlined),
                ),
              ),
              Card(
                color: Color(0xffC4E538),
                margin: EdgeInsets.all(20),
                child: ListTile(
                  onTap: (){},
                  title: Text('1340-00, Alowa Tarini, Tangail'),
                  leading: Icon(Icons.home_filled),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

