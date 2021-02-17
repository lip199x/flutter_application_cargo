import 'package:flutter/material.dart';
import 'home.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String errmsg = "";
  final _formkey = GlobalKey<FormState>();

  TextEditingController _fnameController = TextEditingController();
  TextEditingController _lnameController = TextEditingController();
  TextEditingController _addrController = TextEditingController();
  TextEditingController _postController = TextEditingController();
  TextEditingController _pnumController = TextEditingController();
  TextEditingController _rdateController = TextEditingController();

  void submit() {
    //Code for Login
    FocusScope.of(context).unfocus();
    bool passValidate = _formkey.currentState.validate();
    errmsg = "";
    if (passValidate) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(
              _fnameController.text,
              _lnameController.text,
              _addrController.text,
              _postController.text,
              _pnumController.text,
              _rdateController.text),
        ),
      );
    }
  }

  TextFormField getFname() {
    return TextFormField(
      controller: _fnameController,
      validator: (String inputFname) {
        if (inputFname.isEmpty) {
          return "Please input Firstname";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your Firstname",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField getLname() {
    return TextFormField(
      controller: _lnameController,
      validator: (String inputLname) {
        if (inputLname.isEmpty) {
          return "Please input Lastname";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your Lastname",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField getAddress() {
    return TextFormField(
      controller: _addrController,
      validator: (String inputAddr) {
        if (inputAddr.isEmpty) {
          return "Please input Address";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField getPostal() {
    return TextFormField(
      controller: _postController,
      validator: (String inputPost) {
        if (inputPost.isEmpty) {
          return "Please input Postal";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      maxLength: 5,
      maxLengthEnforced: true,
      decoration: InputDecoration(
        labelText: "Postal",
        hintText: "Enter your Postal",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField getPhonenumber() {
    return TextFormField(
      controller: _pnumController,
      validator: (String inputPnum) {
        if (inputPnum.isEmpty) {
          return "Please input Phone Number";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your Phone Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField getRdate() {
    return TextFormField(
      controller: _rdateController,
      validator: (String inputRdate) {
        if (inputRdate.isEmpty) {
          return "Please input RecieveDate";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "RecieveDate",
        hintText: "Enter RecieveDate",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  SizedBox getSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: RaisedButton(
        color: Colors.pinkAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          "Submit",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 23, color: Colors.white),
        ),
        onPressed: submit,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 15),

            //---Name---
            getFname(),

            SizedBox(height: 10),

            //--last name ---
            getLname(),

            SizedBox(height: 10),

            //--Address---
            getAddress(),

            SizedBox(height: 10),

            //--Postal ---
            getPostal(),

            SizedBox(height: 10),

            //--Phonenumber---
            getPhonenumber(),

            SizedBox(height: 10),

            //--RecieveDate---
            getRdate(),

            SizedBox(height: 20),

            getSubmit(),

            SizedBox(height: 15),

            Container(
              child: Text(
                errmsg,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  //Function to store user detail

  //Function Return email textfield

  //Function Return password textfield

}
