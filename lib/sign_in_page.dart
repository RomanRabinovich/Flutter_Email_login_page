import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Form(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 0),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  child: IconButton(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.keyboard_backspace),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Text('sign in',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
                Text('follow the simple steps',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).secondaryHeaderColor)),
                SizedBox(
                  height: 80,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'username@mail.com', labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String? value) {
                    if (value!.length == 0) return "Email can't be empty";
                    return null;
                  },
                  onChanged: (String value) {},
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    //prefixIcon: Icon(Icons.vpn_key),
                    suffixIcon:
                        IconButton(icon: Icon(Icons.list), onPressed: () {}),
                  ),
                  validator: (String? value) {
                    if (value!.length == 0) return "Password can't be empty";
                    return null;
                  },
                  onChanged: (String value) {},
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text(
                      'forgot password?',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onPressed: () {
                      //nextScreen(context, ForgotPasswordPage());
                    },
                  ),
                ),
                Container(
                  height: 45,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Theme.of(context).primaryColor)),
                    onPressed: () {},
                    child: Icon(Icons.abc),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("don't have an account?"),
                    TextButton(
                      child: Text('sign up',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ));
  }
}
