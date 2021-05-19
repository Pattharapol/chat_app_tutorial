import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context){
  return AppBar(
    title: Text('Flutter Chat App')
  );
}

InputDecoration textFieldInputDecoration(String hint){
  return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
          color: Colors.white54
      ),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
      ),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
      )
  );
}

TextStyle simpleTextStyle(){
   return TextStyle(
     color: Colors.white,
     fontSize: 18
   );
}