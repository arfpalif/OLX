import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/Theme.dart';
import 'package:flutter_application_1/View/Page/Dashboard.dart';
import 'package:flutter_application_1/View/Page/Homepage.dart';
import 'package:flutter_application_1/View/Page/SignUpPage.dart';
import 'package:flutter_application_1/View/Widget/Button.dart';
import 'package:flutter_application_1/View/Widget/FormContainer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello, selamat datang kembali",
                style: blueDarkTextStyle.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              SvgPicture.asset('assets/img/bro.svg'),
              SizedBox(
                height: 10,
              ),
              FormContainerWidget(
                hintText: "Email",
                isPasswordField: false,
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerWidget(
                hintText: "Password",
                isPasswordField: true,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xff3A77FF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Login",
                      style: whiteTextStyle2.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tidak punya akun ? ",
                    style: blackTextStyle2.copyWith(fontSize: 12),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                          (route) => false);
                    },
                    child: Text(
                      "Daftar dulu",
                      style: blueTextStyle.copyWith(fontSize: 12),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
