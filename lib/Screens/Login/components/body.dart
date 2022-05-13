import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glicowatch/Screens/Login/components/background.dart';
import 'package:glicowatch/widget/already_have_an_account.dart';
import 'package:glicowatch/widget/rounded_button.dart';
import 'package:glicowatch/widget/rounded_password_field.dart';
import 'package:glicowatch/widget/rounded_text_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ACESSAR GLICOWATCH',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SvgPicture.asset('lib/assets/icons/login.svg',
                height: size.height * 0.35),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedInputField(
              icon: Icons.people,
              onChanged: ((value) {}),
              hintText: 'Digite seu Email',
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedPasswordField(
              onChanged: (value) => {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedButton(text: 'Entrar', press: () {}),
            SizedBox(
              height: size.height * 0.02,
            ),
            AlreadyHaveAccountCheck(
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
