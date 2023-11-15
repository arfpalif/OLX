import 'package:flutter/material.dart';
import 'Dashboard.dart';
import 'package:flutter_application_1/View/Widget/Button.dart';
import 'package:flutter_application_1/Model/Theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image(image: AssetImage('assets/img/Home.png')),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0,
                ),
                Container(
                  width: 50,
                  height: 30,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/img/Logo_OLX.png'),
                  )),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(),
                Text('Cari rumah sesuai\nyang kamu!',
                    style: blueTextStyle.copyWith(
                      fontSize: 24,
                    )),
                SizedBox(
                  height: 5,
                ),
                Text('Stop buang waktumu dan cari rumah bersamaku!',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Dashboard();
                      }));
                    },
                    style: buttonPrimary,
                    child: Text('Explore now !',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
