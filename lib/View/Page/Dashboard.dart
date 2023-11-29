import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/Page/webview.dart';
import 'profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_application_1/View/Widget/city_card.dart';
import 'package:flutter_application_1/View/Widget/Product_Card.dart';
import 'package:flutter_application_1/Model/Theme.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
          gap: 10,
          activeColor: blueColor,
          color: greyColor,
          padding: EdgeInsets.only(bottom: 20),
          tabMargin: EdgeInsets.only(left: 24, right: 24),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.chat_bubble,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WebViewPage(
                      'https://www.youtube.com/watch?v=2eoPLQJwr8c');
                }));
              },
              text: 'Chat',
            ),
            GButton(
              icon: Icons.ad_units,
              text: 'Iklan saya',
            ),
            GButton(
              icon: Icons.people_alt,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return profile();
                }));
              },
              text: 'Profile',
            ),
          ]),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: ListView(
            children: [
              Container(
                child: ListTile(
                  leading: Container(
                      child: Image.asset(
                    'assets/img/profile.png',
                    width: 37,
                  )),
                  title: Text(
                    'Hello Alif,',
                    style: blueTextStyle.copyWith(fontSize: 16),
                  ),
                  subtitle: Text(
                    'Malang Kota',
                    style: blueTextStyle3.copyWith(fontSize: 10),
                  ),
                  trailing: Image.asset(
                    'assets/img/Logo_OLX.png',
                    width: 40,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  style: searchBarText,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF4F4F4),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: "Temukan Mobil, Motor, Rumah, dan lain lain",
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Color(0xff828282)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image(image: AssetImage('assets/img/Hero(1).jpg')),
              SizedBox(
                height: 30,
              ),
              Text(
                'Kategori',
                style: blueTextStyle2.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCards(),
                    SizedBox(
                      width: 10,
                    ),
                    CityCards1(),
                    SizedBox(
                      width: 10,
                    ),
                    CityCards2(),
                    SizedBox(
                      width: 10,
                    ),
                    CityCards3(),
                    SizedBox(
                      width: 10,
                    ),
                    CityCards4(),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Rekomendasi untukmu',
                style: blueTextStyle2.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 343,
                child: Row(
                  children: [
                    ProductCards(),
                    SizedBox(
                      width: 28.5,
                    ),
                    ProductCards(),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
