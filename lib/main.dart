import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Verification'),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
        actions: [],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 50, right: 50, bottom: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'We sent you a code to verify your',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Text(
              'mobile number',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            SizedBox(
              height: 30,
              width: 300,
            ),
            Text(
              'Enter your OTP code here',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15), 
            ),
            SizedBox(
              height: 10,
              width: 200,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.grey,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: Center(child: Text('4',)),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: Center(child: Text('1')),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.grey,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.grey,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), 
            Container(
              height: 40,
              width: 220,
              decoration: BoxDecoration(color: Colors.black),
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Center(
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(padding: EdgeInsets.only(left: 50),
           child:Column(
            children: [
             Text(
              'I didn\'t receive a code',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),

           Text(
              'RESEND',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),],
            ),),
          ],
        ),
      ),
    );
  }
}
