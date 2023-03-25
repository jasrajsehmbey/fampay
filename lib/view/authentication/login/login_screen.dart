import 'package:fampay/app/routes/app_routes.dart';
import 'package:flutter/material.dart';

import '../../../app/components/buttons/round_text_field.dart';
import '../../../app/components/buttons/rounded_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  height: 100,
                ),
                Image(
                  image: AssetImage('images/fampaylogo.png'),
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    fontFamily: 'Trirong',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, top: 10, bottom: 10, right: 40),
                  child: RoundedField(
                    onChange: (value) {},
                    hideText: false,
                    labelText: 'Enter Email',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, bottom: 10, right: 40),
                      child: RoundedField(
                        onChange: (value) {},
                        hideText: false,
                        labelText: 'Enter Password',
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 40.00, bottom: 10.00),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            color: Color(0xFF32DEE9),
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                RoundedButton(
                  text: 'LOGIN',
                  boxHeight: 53,
                  boxWidth: 200,
                  fontSize: 18,
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.00),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.signupRoute);
                    },
                    child: Text(
                      'New User? Register',
                      style: TextStyle(
                        color: Color(0xFF32DEE9),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
