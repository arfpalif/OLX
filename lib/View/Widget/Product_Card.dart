import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/Theme.dart';


class ProductCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
      color: Color(0xffF4F4F4),
      width: 157.07,
      height: 182,
      child: 
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/img/Rumah.png',
          width: 157.07, 
          height:110.66,
          fit : BoxFit.cover),

          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.only(left: 5),
            child:  Text('Rp15.500.000', style: blueTextStyle2.copyWith(
              fontSize: 16
              ),),
          ),
          Padding(padding: EdgeInsets.only(left: 5),
          child: Column(
            children: [
               Text('Dijual Rumah dengan Luas 10...',style: blueTextStyle3.copyWith(
              fontSize: 10
              ),),
            ],
          ), 
          ),
          
          SizedBox(height: 13,),
          
          Padding(padding: EdgeInsets.only(
            left: 5
          ),
          child: Row(
            children: [
              Icon(Icons.location_on_rounded,
              color: blueColor,
              size: 10,),
              SizedBox(width: 10,),
              Text('Dau, Malang',style: blueTextStyle3.copyWith(
                fontSize: 10
              ),)
            ],
          ),
          ),
        ],
      ),
    ),
    );
  }
}