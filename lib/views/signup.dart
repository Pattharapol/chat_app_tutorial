import 'package:chat_app_tutorial/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController userNameTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: userNameTextEditingController,
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("username"),
                ),
                SizedBox(height: 8,),
                TextField(
                  controller: emailTextEditingController,
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("email"),
                ),
                SizedBox(height: 8,),
                TextField(
                  controller: passwordTextEditingController,
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("password"),
                ),
                SizedBox(height: 8,),
                Container(
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    child: Text("Forgot Password?", style: simpleTextStyle(),),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xff007eF4),
                            const Color(0xff2A75BC)
                          ]
                      ),
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text("Sign Up", style: simpleTextStyle(),),
                ),
                SizedBox(height: 15,),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text("Sign Up With Google", style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18
                  )),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Have Account?", style: simpleTextStyle(),),
                    Text(" SignIn Now", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.underline
                    )),
                  ],
                ),
                SizedBox(height: 80,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
