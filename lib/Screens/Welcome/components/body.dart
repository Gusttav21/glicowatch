import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glicowatch/Screens/Login/login_screen.dart';
import 'package:glicowatch/Screens/Welcome/components/background.dart';
import 'package:glicowatch/constants.dart';
import 'package:glicowatch/widget/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'BEM-VINDO AO GLICOWATCH',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'lib/assets/icons/chat.svg',
              height: size.height * 0.4,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: "ACESSAR",
              press: () async {
                Navigator.pushNamed(context, '/login');
              },
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: "PRIMEIRO ACESSO",
              color: kPrimaryLightColor,
              textColor: const Color.fromARGB(255, 44, 44, 44),
              press: () {},
            )
          ]),
        ),
      ),
    );
  }
}
