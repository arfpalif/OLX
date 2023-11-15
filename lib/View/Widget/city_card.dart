import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/Theme.dart';

class CityCards extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
      width: 69,
      height: 130,
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Image.asset('assets/img/ic_mobil.png',
          width: 55, 
          height:56,
          fit : BoxFit.cover),
          const SizedBox(height: 10,),
          Text('Mobil', style: blueTextStyle3.copyWith(
            fontSize: 14
          ),)
        ],
      ),
    ),
    );
  }
}

class CityCards1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
       child: Container(
      width: 69,
      height: 130,
      child: Column(
        children: [
          SizedBox(height: 10,),
          Image.asset('assets/img/ic_motor.png',
          width: 55, 
          height:56,
          fit : BoxFit.cover),
          SizedBox(height: 10,),
          Text('Mobil', style: blueTextStyle3.copyWith(
            fontSize: 14
          ),)
        ],
      ),
    ),
    );
  }
}

class CityCards2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
       child: Container(
      width: 69,
      height: 130,
      child: Column(
        children: [
          SizedBox(height: 10,),
          Image.asset('assets/img/ic_properti.png',
          width: 55, 
          height:56,
          fit : BoxFit.cover),
          SizedBox(height: 10,),
          Text('Properti', style: blueTextStyle3.copyWith(
            fontSize: 14
          ),)
        ],
      ),
    ),
    );
  }
}

class CityCards3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
       child: Container(
      width: 69,
      height: 130,
      child: Column(
        children: [
          SizedBox(height: 10,),
          Image.asset('assets/img/ic_rumah.png',
          width: 55, 
          height:56,
          fit : BoxFit.cover),
          SizedBox(height: 10,),
          Text('Rumah', style: blueTextStyle3.copyWith(
            fontSize: 14
          ),)
        ],
      ),
    ),
    );
  }
}

class CityCards4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
       child: Container(
      width: 69,
      height: 130,
      child: Column(
        children: [
          SizedBox(height: 10,),
          Image.asset('assets/img/ic_handphone.png',
          width: 55, 
          height:56,
          fit : BoxFit.cover),
          SizedBox(height: 10,),
          Text('handphone', style: blueTextStyle3.copyWith(
            fontSize: 14
          ),)
        ],
      ),
    ),
    );
  }
}

