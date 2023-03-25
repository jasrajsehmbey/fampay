import 'package:flutter/material.dart';

import '../../../app/components/buttons/round_text_field.dart';
import '../../../app/components/buttons/rounded_buttons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  static final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Hero(
                  tag: 'mainlogo',
                  child: Image(
                    image: AssetImage('images/fampaylogo.png'),
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(
                  height: 30.00,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                      fontSize: 40),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, top: 10, bottom: 10, right: 40),
                  child: RoundedField(
                    labelText: 'Email',
                    hideText: false,
                    onChange: (value) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, top: 10, bottom: 10, right: 40),
                  child: RoundedField(
                    labelText: 'Password',
                    hideText: false,
                    onChange: (value) {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, top: 10, bottom: 10, right: 40),
                  child: RoundedField(
                    labelText: 'Phone',
                    hideText: false,
                    onChange: (value) {},
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, bottom: 10, right: 40),
                      child: RoundedField(
                        labelText: 'Username',
                        hideText: true,
                        onChange: (value) {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, bottom: 15),
                      child: Text(
                        '* This will be displayed on your profile',
                        style: TextStyle(
                            fontFamily: 'Poppins', color: Color(0xFF32DEE9)),
                      ),
                    )
                  ],
                ),
                RoundedButton(
                  text: 'Register',
                  boxHeight: animation.value * 53,
                  boxWidth: animation.value * 200,
                  fontSize: animation.value * 18,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
