import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constans/global_variable.dart';
import 'package:flutter/material.dart';

enum Auth { signin, signup }

// declared a enum to check wheather a app signed in or not
class AuthScreen extends StatefulWidget {
  static const routeName = "/AuthScreen";
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  // creating a instance for to initialize that initial value is signup
  Auth _auth = Auth.signup;
  // to access the form for seperately we are using key
  final _signupFromKey = GlobalKey<FormState>();
  final signinFormKey = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _namecontroller = TextEditingController();
  @override
  void dispose() {
    _emailcontroller.dispose();
    _namecontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'WELCOME',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            ListTile(
              tileColor: _auth == Auth.signup
                  ? GlobalVariables.backgroundColor
                  : GlobalVariables.greyBackgroundCOlor,
              title: Text(
                ' create an account',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if (_auth == Auth.signup)
              Container(
                padding: EdgeInsets.all(8),
                color: GlobalVariables.backgroundColor,
                child: Form(
                    key: _signupFromKey,
                    child: Column(
                      children: [
                        custom_textfield(
                            controller: _emailcontroller, hinText: 'Name'),
                        SizedBox(
                          height: 10,
                        ),
                        custom_textfield(
                            controller: _emailcontroller, hinText: 'Email'),
                        SizedBox(
                          height: 10,
                        ),
                        custom_textfield(
                            controller: _emailcontroller, hinText: 'Password'),
                        SizedBox(
                          height: 10,
                        ),
                        custom_button(onTap: () {}, text: 'sign in')
                      ],
                    )),
              ),
            ListTile(
              tileColor: _auth == Auth.signin
                  ? GlobalVariables.backgroundColor
                  : GlobalVariables.greyBackgroundCOlor,
              title: Text(
                'sign-in.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if (_auth == Auth.signin)
              Container(
                padding: EdgeInsets.all(8),
                color: GlobalVariables.backgroundColor,
                child: Form(
                    key: _signupFromKey,
                    child: Column(
                      children: [
                        custom_textfield(
                            controller: _emailcontroller, hinText: 'Email'),
                        SizedBox(
                          height: 10,
                        ),
                        custom_textfield(
                            controller: _emailcontroller, hinText: 'Password'),
                        SizedBox(
                          height: 10,
                        ),
                        custom_button(onTap: () {}, text: 'sign in')
                      ],
                    )),
              )
          ],
        ),
      )),
    );
  }
}
