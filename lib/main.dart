import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Varun Bhalerao',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ContactPage(),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: MediaQuery.of(context).size.width < 600
              ? MediaQuery.of(context).size.width * 0.9
              : 600,
          child: Card(
            elevation: 8,
            color: Colors.pink[100],
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                        NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/1-1-1596825429.jpg')
                        )
                      ),
                    ),
                  ),
                ),
                //------------------------------------------
                Text('Pink Fallie', style: TextStyle(color: Colors.purple ,fontSize: 36,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                //-----------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Divider(thickness: 2,),
                ),
                //-----------------------------------------
                ContactInfoWidget(contactText: 'pinkfallie@fallingout.com', contactIcon: Icons.email_outlined,),
                SizedBox(height: 5,),
                ContactInfoWidget(contactText: '+65 2131 2563', contactIcon: Icons.phone_outlined,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ContactInfoWidget extends StatelessWidget {

  final String contactText;
  final IconData contactIcon;

  const ContactInfoWidget({Key key, @required this.contactText, @required this.contactIcon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40 ),
      child: Card(color: Colors.purple[200],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(contactIcon, color: Colors.purple,),
              SizedBox(width: 10,),
              Text(contactText , style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
