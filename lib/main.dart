import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Contact US",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children:[
    Card(
    elevation: 10,
      margin: EdgeInsets.only(top:40),
    child: Container(
      height: 600,
    width: 300,
    margin: EdgeInsets.all(20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.mail),
              Text(
                ' Email ID:  ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: _sendEmail,
                  child: Text('support@quickk.co.in'),
                ),
              ),
            ],
          ),
          SizedBox(height:50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.mail),
              Text(
                ' Email ID:  ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: _sendEmail,
                  child: Text('sale@quickk.co.in'),
                ),
              ),
            ],
          ),
          SizedBox(height:50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.phone),
              Text(
                'Phone 1:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: _callNumber,
                child: Text('+91-9810119906'),
              ),
            ],
          ),
          SizedBox(height:50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.phone),
              Text(
                'Phone 2:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: _callNumber,
                child: Text('+91-9810119905'),
              ),
            ],
          ),
          SizedBox(height:50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.dialer_sip),
              Text(
                'Telephone 1:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: _callNumber,
                child: Text('0129-12345678'),
              ),
            ],
          ),
          SizedBox(height:50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.dialer_sip),
              Text(
                'Telephone 2:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: _callNumber,
                child: Text('0129-12345678'),
              ),
            ],
          ),
            ],
          ),
        // ],
      ),
    ),
                ],
            ),
        ),
      )
    );
  }
}


_callNumber() async{
const number = '8383867619'; //set the number here
bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}


_sendEmail() {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'xxxx@example.com',
  );
  launch(_emailLaunchUri.toString());
}








    //       body: SingleChildScrollView(
    //         child: Center(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Card(
    //                 elevation: 10,
    //                 child: Container(
    //                     width: 250,
    //                     margin: EdgeInsets.all(20),
    //                     child: Column(
    //                       children: [
    //                         Row(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             const Text(
    //                               'Email ID:  ',
    //                               style: TextStyle(
    //                                   color: Colors.black,
    //                                   fontSize: 16,
    //                                   fontWeight: FontWeight.bold),
    //                             ),
    //                             Expanded(
    //                               child: Text(
    //                                   "+1234455",
    //                                 style: TextStyle(
    //                                     color: Colors.black,
    //                                     fontSize: 16,
    //                                     fontWeight: FontWeight.bold),
    //                               ),
    //                             )
    //                           ],
    //                         ),
    //                         SizedBox(
    //                           height: 5,
    //                         ),
    //                         Row(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             const Text(
    //                               'Email ID:  ',
    //                               style: TextStyle(
    //                                   color: Colors.black,
    //                                   fontSize: 16,
    //                                   fontWeight: FontWeight.bold),
    //                             ),
    //                             Expanded(
    //                               child: Text(
    //                                 "+1234455",
    //                                 style: TextStyle(
    //                                     color: Colors.black,
    //                                     fontSize: 16,
    //                                     fontWeight: FontWeight.bold),
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                         SizedBox(
    //                           height: 5,
    //                         ),
    //                         Row(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             const Text(
    //                               'MobileNo1:  ',
    //                               style: TextStyle(
    //                                   color: Colors.black,
    //                                   fontSize: 16,
    //                                   fontWeight: FontWeight.bold),
    //                             ),
    //                             Expanded(
    //                               child: Text(
    //                                 "+1234455",
    //                                 style: TextStyle(
    //                                     color: Colors.black,
    //                                     fontSize: 16,
    //                                     fontWeight: FontWeight.bold),
    //                               ),
    //                             )
    //                           ],
    //                         ),
    //                         SizedBox(
    //                           height: 5,
    //                         ),
    //                         Row(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             const Text(
    //                               'MobileNo2:  ',
    //                               style: TextStyle(
    //                                   color: Colors.black,
    //                                   fontSize: 16,
    //                                   fontWeight: FontWeight.bold),
    //                             ),
    //                             Expanded(
    //                               child: Text(
    //                                 "+1234455",
    //                                 // contactus[0]['mobileno2'].toString(),
    //                                 style: TextStyle(
    //                                     color: Colors.black,
    //                                     fontSize: 16,
    //                                     fontWeight: FontWeight.bold),
    //                               ),
    //                             )
    //                           ],
    //                         ),
    //                         SizedBox(
    //                           height: 5,
    //                         ),
    //                         Row(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             const Text(
    //                               'OfficeNo1:  ',
    //                               style: TextStyle(
    //                                   color: Colors.black,
    //                                   fontSize: 16,
    //                                   fontWeight: FontWeight.bold),
    //                             ),
    //                             Expanded(
    //                               child: Text(
    //                                   "+1234455",
    //                                 style: TextStyle(
    //                                     color: Colors.black,
    //                                     fontSize: 16,
    //                                     fontWeight: FontWeight.bold),
    //                               ),
    //                             )
    //                           ],
    //                         ),
    //                         SizedBox(
    //                           height: 5,
    //                         ),
    //                         Row(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             const Text(
    //                               'OfficeNo2:  ',
    //                               style: TextStyle(
    //                                   color: Colors.black,
    //                                   fontSize: 16,
    //                                   fontWeight: FontWeight.bold),
    //                             ),
    //                             Expanded(
    //                               child: Text(
    //                                   "+1234455",
    //                                 style: TextStyle(
    //                                     color: Colors.black,
    //                                     fontSize: 16,
    //                                     fontWeight: FontWeight.bold),
    //                               ),
    //                             )
    //                           ],
    //                         ),
    //                       ],
    //                     )),
    //                 shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(15.0),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     );
    //   }
    //   }