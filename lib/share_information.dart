import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareInformation extends StatefulWidget {
  const ShareInformation({super.key});

  @override
  State<ShareInformation> createState() => _ShareInformationState();
}

class _ShareInformationState extends State<ShareInformation> {
var  _name = 'Raja Ganapathy';
var _email = 'rajaganapathy.d.t@gmail.com';
var _mobile = '9360261781';
var _address = 'S2 S K Illam, Plot No:5,\n2nd Cross Street,\nKamalam Nagar,\nNanmangalam, Chennai - 600127.\nLand Mark: Near Pole Star School';



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ListTile(
              title: Text(
                'Share Information',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                title: GestureDetector(
                  child: Text(
                   _name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onLongPress:() {
                    Share.share(_name);
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.red,
                ),
                title: Text(
                  _email,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onLongPress: () {
                  Share.share(_email);
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.phone_android_rounded,
                  color: Colors.red,
                ),
                title: Text(
                  _mobile,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onLongPress: () {
                  Share.share(_mobile);
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              child: ListTile(
                leading: Icon(
                  Icons.location_pin,
                  color: Colors.red,
                ),
                title: Text(
                  _address,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onLongPress: () {
                  Share.share(_address);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
