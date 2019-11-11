import 'package:flutter/material.dart';

import '../constants.dart';

class EditFoodUi extends StatefulWidget {
  @override
  _EditFoodUiState createState() => _EditFoodUiState();
}

class _EditFoodUiState extends State<EditFoodUi> {
  bool isHorizontal = false;
  Color bgColor = Colors.white;
  ScrollController _controller = new ScrollController();
  bool isStreachedVertical = false;
  Color iconBgColor = Constants.bgColor;

  Widget getItemCountControllerWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Constants.gradient2,
              ),
              child: Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              "1",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(
              width: 16,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Constants.gradient2,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        RaisedButton(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          onPressed: () {},
          color: Constants.gradient2,
          child: Text(
            "Add",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget getFoodInfoWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          "Food Name",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 4,
        ),
        Text("Food Type"),
      ],
    );
  }

  Widget getTemperatureWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Temperature'),
        Wrap(
          children: <Widget>[
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              onPressed: () {},
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.brightness_5,
                    size: 32,
                    color: Constants.gradient2,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Hot", style: TextStyle(color: Constants.gradient2)),
                ],
              ),
              color: Constants.bgLightColor,
            ),
            SizedBox(
              width: 16,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              onPressed: () {},
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.ac_unit,
                    size: 32,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Cold", style: TextStyle(color: Colors.white)),
                ],
              ),
              color: Constants.gradient2,
            ),
          ],
        ),
      ],
    );
  }

  Widget getSizeWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Size'),
        Wrap(
          children: <Widget>[
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              onPressed: () {},
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.photo_size_select_small,
                      size: 32, color: Constants.gradient2),
                  SizedBox(
                    width: 8,
                  ),
                  Text("S", style: TextStyle(color: Constants.gradient2)),
                ],
              ),
              color: Constants.bgLightColor,
            ),
            SizedBox(
              width: 16,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              onPressed: () {},
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.photo_size_select_small,
                      size: 32, color: Constants.gradient2),
                  SizedBox(
                    width: 8,
                  ),
                  Text("M", style: TextStyle(color: Constants.gradient2)),
                ],
              ),
              color: Constants.bgLightColor,
            ),
            SizedBox(
              width: 16,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              onPressed: () {},
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.photo_size_select_small,
                      size: 32, color: Colors.white),
                  SizedBox(
                    width: 8,
                  ),
                  Text("L", style: TextStyle(color: Colors.white)),
                ],
              ),
              color: Constants.gradient2,
            ),
          ],
        ),
      ],
    );
  }

  Widget getExtrasWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Extras'),
        Wrap(
          children: <Widget>[
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              onPressed: () {},
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Text("Extra Sous",
                  style: TextStyle(color: Constants.gradient2)),
              color: Constants.bgLightColor,
            ),
            SizedBox(
              width: 16,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              onPressed: () {},
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child:
                  Text("Extra Myonis", style: TextStyle(color: Colors.white)),
              color: Constants.gradient2,
            ),
            SizedBox(
              width: 16,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              onPressed: () {},
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Text("Extra Spicy", style: TextStyle(color: Colors.white)),
              color: Constants.gradient2,
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    if (MediaQuery.of(context).size.width > 750)
      isHorizontal = true;
    else
      isHorizontal = false;
    if (MediaQuery.of(context).size.width < 400) isStreachedVertical = true;
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(), // new
        controller: _controller,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: isHorizontal
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 196,
                  height: 148,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1, 2),
                            blurRadius: 1)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: ExactAssetImage("assets/images/salad.jpg"))),
                ),
                isStreachedVertical
                    ? SizedBox()
                    : isHorizontal
                        ? Row(
                            children: <Widget>[
                              SizedBox(
                                width: 16,
                              ),
                              getFoodInfoWidget(),
                              SizedBox(
                                width: 16,
                              ),
                              getItemCountControllerWidget()
                            ],
                          )
                        : Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              getFoodInfoWidget(),
                              SizedBox(
                                height: 16,
                              ),
                              getItemCountControllerWidget()
                            ],
                          ),
                SizedBox(
                  width: isHorizontal ? 16 : 0,
                ),
                isHorizontal
                    ? Expanded(
                        child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                          hintText: "Add Notes",
                          suffix: Icon(Icons.mode_edit),
                        ),
                        maxLines: 5,
                      ))
                    : SizedBox()
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          isStreachedVertical
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    getFoodInfoWidget(),
                    SizedBox(
                      height: 16,
                    ),
                    getItemCountControllerWidget()
                  ],
                )
              : SizedBox(),
          SizedBox(
            height: isStreachedVertical ? 16 : 0,
          ),
          !isHorizontal
              ? TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      hintText: "Add Notes",
                      suffix: Icon(Icons.mode_edit)),
                  maxLines: 5,
                )
              : SizedBox(),
          SizedBox(
            height: 16,
          ),
          isHorizontal
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    getTemperatureWidget(),
                    SizedBox(
                      width: 24,
                    ),
                    getSizeWidget(),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    getTemperatureWidget(),
                    SizedBox(
                      height: 16,
                    ),
                    getSizeWidget(),
                  ],
                ),
          SizedBox(
            height: 16,
          ),
          getExtrasWidget(),
        ],
      ),
    );
//    );
  }
}
