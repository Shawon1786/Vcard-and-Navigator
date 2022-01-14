import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class page_3 extends StatelessWidget {
  const page_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFD7272),
        title: Text('Mobile'),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff9AECDB),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('WELCOME',
                style: TextStyle(
                  fontSize: 80,
                  color: Color(0xff3B3B98),
                  letterSpacing: 4,
                  fontFamily: 'Luxury',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text("Contact with me in mobile"),
              Text("Please call 01763835714"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.home_sharp),
        backgroundColor: Color(0xff1B9CFC),
      ),
    );
  }
}
