import 'package:example_flutter/food/food.edit.ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../constants.dart';
import '../orderwidget.dart';

class SalesUi extends StatefulWidget {
  @override
  _SalesUiState createState() => _SalesUiState();
}

class _SalesUiState extends State<SalesUi> {
  Color bgColor = Colors.white;
  Color iconBgColor = Constants.bgColor;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  FocusNode focusNode = FocusNode();
  bool isHorizontal = false;

  @override
  void initState() {
    super.initState();
  }

  Widget getItemWidgets() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
//      crossAxisAlignment: WrapCrossAlignment.end,
        runAlignment: WrapAlignment.start,
        runSpacing: 12,
        spacing: 8,
        children: <Widget>[
          Container(
            width: 156,
            height: 128,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(2, 4), blurRadius: 4)
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage("assets/images/salad.jpg"))),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  showEditProductDialog();
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Constants.bgColor,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Text("Edit",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            ),
          ),
          Container(
            width: 156,
            height: 128,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(2, 4), blurRadius: 4)
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage("assets/images/salad.jpg"))),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  showEditProductDialog();
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Constants.bgColor,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Text("Edit",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            ),
          ),
          Container(
            width: 156,
            height: 128,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(2, 4), blurRadius: 4)
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage("assets/images/salad.jpg"))),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  showEditProductDialog();
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Constants.bgColor,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Text("Edit",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            ),
          ),
          Container(
            width: 156,
            height: 128,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(2, 4), blurRadius: 4)
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage("assets/images/salad.jpg"))),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  showEditProductDialog();
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Constants.bgColor,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Text("Edit",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getOrderWidget() {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      onPressed: () {},
//                      padding: EdgeInsets.symmetric(
//                        horizontal: 32,
//                      ),
                      child: Text("Split Bill",
                          style: TextStyle(color: Constants.gradient2)),
                      color: Constants.bgLightColor,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      onPressed: () {},
//                      padding: EdgeInsets.symmetric(
//                        horizontal: 32,
//                      ),
                      child: Text("Place Order",
                          style: TextStyle(color: Constants.gradient2)),
                      color: Constants.bgLightColor,
                    ),
                  ),
                ],
              ),
              Divider(),
              Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: ListTile(
                    title: Text("Fresh Salad"),
                    subtitle: Text("Green Picker"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          color: Constants.gradient2,
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
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          color: Constants.gradient2,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    onTap: () => print('Delete'),
                  ),
                ],
              ),
              Divider(),
              Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: ListTile(
                    title: Text("Fresh Salad"),
                    subtitle: Text("Green Picker"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          color: Constants.gradient2,
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
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          color: Constants.gradient2,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    onTap: () => print('Delete'),
                  ),
                ],
              ),
              Divider(),
              Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: ListTile(
                    title: Text("Fresh Salad"),
                    subtitle: Text("Green Picker"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          color: Constants.gradient2,
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
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          color: Constants.gradient2,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    onTap: () => print('Delete'),
                  ),
                ],
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
        Positioned(
            left: 0.0,
            right: 0.0,
            bottom: -100,
            child: OrderWidget(isHorizontal))
      ],
    );
  }

  showEditProductDialog() {
    showDialog(
        context: context,
        builder: (_) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.5,
              maxHeight: MediaQuery.of(context).size.height * 0.5,
            ),
            child: Container(
//              color: Colors.white ,
              margin: const EdgeInsets.only(
                  left: 8.0, right: 8, top: 32, bottom: 16),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 24,
                    left: 16,
                    right: 16,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 17),
                        margin: const EdgeInsets.only(
                            left: 16.0, right: 16, top: 16),
                        child: EditFoodUi(),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 24,
                        child: Icon(
                          Icons.cancel,
                          size: 48,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    if (MediaQuery.of(context).size.width > 750)
      isHorizontal = true;
    else
      isHorizontal = false;
    return Scaffold(
      key: _scaffoldKey,
      drawer: isHorizontal
          ? null
          : SizedBox(
              width: 96,
              child: Drawer(
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Constants.gradient2,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Constants.gradient2,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/diet.png",
                            width: 48,
                            height: 48,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Lunch",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
//                  color: iconBgColor,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/diet.png",
                            width: 48,
                            height: 48,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Lunch",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
//                  color: iconBgColor,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/diet.png",
                            width: 48,
                            height: 48,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Lunch",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
//                  color: iconBgColor,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/diet.png",
                            width: 48,
                            height: 48,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Lunch",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
      body: SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height),
          child: Row(
            children: <Widget>[
              isHorizontal
                  ? SizedBox(
                      width: 100,
                      height: MediaQuery.of(context).size.height,
                      child: Drawer(
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 4),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Constants.gradient2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Constants.gradient2,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/diet.png",
                                    width: 48,
                                    height: 48,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Lunch",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
//                  color: iconBgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/diet.png",
                                    width: 48,
                                    height: 48,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Lunch",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
//                  color: iconBgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/diet.png",
                                    width: 48,
                                    height: 48,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Lunch",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
//                  color: iconBgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/diet.png",
                                    width: 48,
                                    height: 48,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Lunch",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : SizedBox(),
//              isHorizontal
//                  ? Container(
//                      decoration: BoxDecoration(
//                          color: Constants.gradient1,
//                          borderRadius: BorderRadius.only(
//                              topRight: Radius.circular(8),
//                              bottomRight: Radius.circular(8))),
//                      width: 88,
//                      margin: EdgeInsets.only(top: 16),
////                height: MediaQuery.of(context).size.height,
//                      child: ListView(
//                        physics: BouncingScrollPhysics(),
//                        shrinkWrap: true,
//                        children: <Widget>[
//                          SizedBox(
//                            height: 24,
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
//                              color: Constants.gradient2,
//                              borderRadius:
//                                  BorderRadius.all(Radius.circular(8)),
//                            ),
//                            margin: EdgeInsets.symmetric(vertical: 16),
//                            padding: EdgeInsets.symmetric(vertical: 8),
//                            child: Column(
//                              children: <Widget>[
//                                Image.asset(
//                                  "assets/images/logo.png",
//                                  width: 48,
//                                  height: 48,
//                                ),
//                                SizedBox(
//                                  height: 4,
//                                ),
//                                Text(
//                                  "Lunch",
//                                  style: TextStyle(
//                                      color: Colors.white, fontSize: 16),
//                                )
//                              ],
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
////                  color: iconBgColor,
//                              borderRadius:
//                                  BorderRadius.all(Radius.circular(8)),
//                            ),
//                            margin: EdgeInsets.symmetric(
//                                horizontal: 8, vertical: 16),
//                            padding: EdgeInsets.symmetric(vertical: 8),
//                            child: Column(
//                              children: <Widget>[
//                                Image.asset(
//                                  "assets/images/logo.png",
//                                  width: 48,
//                                  height: 48,
//                                ),
//                                SizedBox(
//                                  height: 4,
//                                ),
//                                Text(
//                                  "Lunch",
//                                  style: TextStyle(
//                                      color: Colors.black, fontSize: 16),
//                                )
//                              ],
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
////                  color: iconBgColor,
//                              borderRadius:
//                                  BorderRadius.all(Radius.circular(8)),
//                            ),
//                            margin: EdgeInsets.symmetric(
//                                horizontal: 8, vertical: 16),
//                            padding: EdgeInsets.symmetric(vertical: 8),
//                            child: Column(
//                              children: <Widget>[
//                                Image.asset(
//                                  "assets/images/logo.png",
//                                  width: 48,
//                                  height: 48,
//                                ),
//                                SizedBox(
//                                  height: 4,
//                                ),
//                                Text(
//                                  "Lunch",
//                                  style: TextStyle(
//                                      color: Colors.black, fontSize: 16),
//                                )
//                              ],
//                            ),
//                          ),
//                          Container(
//                            decoration: BoxDecoration(
////                  color: iconBgColor,
//                              borderRadius:
//                                  BorderRadius.all(Radius.circular(8)),
//                            ),
//                            margin: EdgeInsets.symmetric(
//                                horizontal: 8, vertical: 16),
//                            padding: EdgeInsets.symmetric(vertical: 8),
//                            child: Column(
//                              children: <Widget>[
//                                Image.asset(
//                                  "assets/images/logo.png",
//                                  width: 48,
//                                  height: 48,
//                                ),
//                                SizedBox(
//                                  height: 4,
//                                ),
//                                Text(
//                                  "Lunch",
//                                  style: TextStyle(
//                                      color: Colors.black, fontSize: 16),
//                                )
//                              ],
//                            ),
//                          ),
//                        ],
//                      ),
//                    )
//                  : SizedBox(),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(16.0),
                      padding: const EdgeInsets.all(12.0),
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 2,
                          offset: Offset.zero,
                        )
                      ]),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/logo.png",
                            height: 56,
                            width: 72,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
//                    constraints: BoxConstraints(
//                      maxWidth: MediaQuery.of(context).size.width,
//
//                    ),
                            child: Container(
//                    width: isHorizontal?MediaQuery.of(context).size.width / 2:MediaQuery.of(context).size.width-100  ,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: Border.all(
                                      color: focusNode.hasFocus
                                          ? Colors.blue
                                          : Colors.grey)),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.search,
                                        color: focusNode.hasFocus
                                            ? Colors.blue
                                            : Colors.grey),
                                    onPressed: () {
                                      FocusScope.of(context)
                                          .autofocus(focusNode);
                                    },
                                  ),
                                  Expanded(
                                    child: TextField(
                                      focusNode: focusNode,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                          hintText: "Search",
                                          alignLabelWithHint: true,
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          isHorizontal ? Spacer() : SizedBox(),
                          isHorizontal
                              ? Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Constants.gradient1,
                                            Constants.gradient2
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 24),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      CircleAvatar(
                                        child: Image.asset(
                                          "assets/images/man-profile.png",
                                        ),
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Salem",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.white,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                )
                              : SizedBox()
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: isHorizontal
                          ? Row(
//                      mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Constants.gradient1,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomRight: Radius.circular(8))),

                                      margin: EdgeInsets.only(
                                          top: 16, left: 0, right: 24),
//                height: MediaQuery.of(context).size.height,
                                      child: ListView(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Constants.gradient2,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                            ),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 0, vertical: 16),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8),
                                            child: Column(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.fastfood,
                                                  color: Colors.white,
                                                  size: 32,
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  "Lunch",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                            ),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 0, vertical: 16),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8),
                                            child: Column(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.fastfood,
                                                  color: Colors.white,
                                                  size: 32,
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  "Lunch",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                            ),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 0, vertical: 16),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8),
                                            child: Column(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.fastfood,
                                                  color: Colors.white,
                                                  size: 32,
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  "Lunch",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                Expanded(flex: 18, child: getItemWidgets()),
                                Expanded(flex: 14, child: getOrderWidget())
                              ],
                            )
                          : SizedBox(),
                    ),
                    isHorizontal ? SizedBox() : getItemWidgets(),
                    isHorizontal ? SizedBox() : getOrderWidget(),
                    SizedBox(
                      height: 250,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFf3F2Ff),
    );
  }
}
