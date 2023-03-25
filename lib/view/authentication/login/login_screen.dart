import 'package:fampay/app/routes/app_routes.dart';
import 'package:fampay/view/authentication/login/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';

import '../../../app/components/buttons/round_text_field.dart';
import '../../../app/components/buttons/rounded_buttons.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String mobileController = '';

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
                // Padding(
                //   padding: const EdgeInsets.only(top: 30, bottom: 20),
                //   child: TextFormField(
                //     maxLength: 10,
                //     cursorColor: Colors.orange,
                //     controller: mobileController,
                //     keyboardType: TextInputType.phone,
                //     obscureText: false,
                //     decoration: const InputDecoration(
                //       prefixText: '+91 ',
                //       prefixStyle: TextStyle(
                //         fontFamily: 'Poppins',
                //         color: Colors.yellow,
                //       ),
                //       label: Text(
                //         'Mobile Number',
                //       ),
                //       labelStyle: TextStyle(
                //         color: Colors.black38,
                //         fontSize: 15,
                //       ),
                //       enabledBorder: UnderlineInputBorder(
                //         borderSide: BorderSide(
                //           width: 0.9,
                //           color: Colors.black38,
                //         ),
                //       ),
                //       focusedBorder: UnderlineInputBorder(
                //         borderSide: BorderSide(
                //           width: 0.9,
                //           color: Colors.orange,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      mobileController = phone.completeNumber;
                    },
                    pickerDialogStyle: PickerDialogStyle(),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //       left: 40, top: 10, bottom: 10, right: 40),
                //   child: RoundedField(
                //     onChange: (value) {},
                //     hideText: false,
                //     labelText: 'Enter Email',
                //   ),
                // ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(
                //           left: 40, top: 10, bottom: 10, right: 40),
                //       child: RoundedField(
                //         onChange: (value) {},
                //         hideText: false,
                //         labelText: 'Enter Password',
                //       ),
                //     ),
                //     Padding(
                //       padding:
                //           const EdgeInsets.only(right: 40.00, bottom: 10.00),
                //       child: TextButton(
                //         onPressed: () {},
                //         child: Text(
                //           'Forgot Password ?',
                //           style: TextStyle(
                //             color: Color(0xFF32DEE9),
                //             fontFamily: 'Poppins',
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                RoundedButton(
                  text: 'LOGIN',
                  boxHeight: 53,
                  boxWidth: 200,
                  fontSize: 18,
                  onPressed: () {
                    if (mobileController.length == 13) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OTPScreen(mobileController)));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Enter Valid Phone number')));
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
