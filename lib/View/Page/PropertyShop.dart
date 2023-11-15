import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Model/Theme.dart';

class PropertyShop extends StatelessWidget {
  const PropertyShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Image.asset('assets/img/Rumah2.png'),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(left: 25, right: 10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rp15.500.000',
                style: blueTextStyle.copyWith(fontSize: 19),
              ),
              Container(
                width: 61,
                height: 27.11,
                padding: const EdgeInsets.all(3.93),
                decoration: ShapeDecoration(
                  color: Color(0xFF3A77FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 22.02,
                      height: 19.26,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(children: []),
                    ),
                    const SizedBox(width: 7.86),
                    Text('3',
                        textAlign: TextAlign.center, style: whiteTextStyle),
                  ],
                ),
              )
            ],
          ),
        ),
        Container()
      ],
    ));
  }
}
