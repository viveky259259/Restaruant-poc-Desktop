import 'package:example_flutter/sales/sales.ui.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class LoginUi extends StatefulWidget {
  @override
  _LoginUiState createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  Color bgColor = Constants.bgColor;
  Color iconBgColor = Constants.bgColor;
  bool isHorizontal = false;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 750)
      isHorizontal = true;
    else
      isHorizontal = false;
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
          margin: EdgeInsets.all(24),
          width: isHorizontal
              ? MediaQuery.of(context).size.width / 2
              : MediaQuery.of(context).size.width,
//        height:MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                height: 72,
                width: 72,
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.blueGrey)),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Enter name",
                              border: InputBorder.none)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.blueGrey)),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.vpn_key,
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Enter password",
                              border: InputBorder.none)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SalesUi()));
                  },
                  color: bgColor,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
