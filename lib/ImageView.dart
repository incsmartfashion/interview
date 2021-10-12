import 'package:flutter/material.dart';
import 'dart:io';

import 'Image.dart';
import 'main.dart';

class ProductEditPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductEditPageState();
  }
}

class _ProductEditPageState extends State<ProductEditPage> {
  final Map<String, dynamic> _formData = {
    'title': null,
    'description': null,
    'price': null,
    'image': null,
    'gender': null
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget _buildPageContent(BuildContext contextbuild,) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    final double targetPadding = deviceWidth - targetWidth;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: targetPadding / 2),
              children: <Widget>[
                SizedBox(height: 50.0),
                SizedBox(height: 10.0),
                RaisedButton(
                  child: Text('Verify OTP'),
                  color: Colors.red,
                  onPressed: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(
            builder: (context) => HomePage(),),
                     );
                  }
                   ),
                ImageInput(_setImage,),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _setImage(File image) {
    _formData['image'] = image;
  }


  @override
  Widget build(BuildContext context) {
    final Widget pageContent =
            _buildPageContent(context,);
        return pageContent;
  }
}
