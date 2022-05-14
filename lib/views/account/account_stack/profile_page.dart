
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../account_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child : Column(children: [
        Container(
          width: width,
          height: height*0.25,
          color: theme.primaryColor,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height:(height*0.03)+MediaQuery.of(context).padding.top,),
                  Row(children: [Expanded(child: SizedBox(),flex: 3,),AutoSizeText("Profile",style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,),Expanded(child: SizedBox(),flex: 2,),Icon(Icons.notifications_outlined,color: Colors.white,),SizedBox(width: width*0.05,)],),
                  SizedBox(height: height*0.04,),
                    AutoSizeText("mayra.querales@gmail.com",style: TextStyle(color: Colors.white,fontSize: 14),textAlign: TextAlign.center)
                ],),
              Positioned(
                  bottom: - height*0.04,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset("assets/images/person.png",height: height*0.08,width: height*0.08,)),
                    ),
                  )),
              Positioned(
                  left: 5,
                  top: MediaQuery.of(context).padding.top,
                  child: IconButton(onPressed: () => Get.find<AccountController>().setIndex(
                  Get.find<AccountController>().accountStackIndex - 1), icon: FaIcon(
                FontAwesomeIcons.circleArrowLeft,
                color: Colors.white,
              )))
            ],
          ),
        ),
        SizedBox(height: height*0.06,),
        Padding(padding: EdgeInsets.only(left: width*0.03,right: width*0.03,bottom: height*0.01),child: TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              hintText: "Full Name",
              hintStyle: TextStyle(color: Colors.black,fontSize: 14),
              filled: true,
              fillColor: Color.fromRGBO(235, 235, 235, 1),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.person,color: Color.fromRGBO(25, 230, 255, 1),)),
          textAlign: TextAlign.center,
        ),),
        Padding(padding: EdgeInsets.only(left: width*0.03,right: width*0.03,bottom: height*0.01),child: TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.black,fontSize: 14),
              filled: true,
              fillColor: Color.fromRGBO(235, 235, 235, 1),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.email,color: Color.fromRGBO(25, 230, 255, 1),)),
          textAlign: TextAlign.center,
        ),),
        Padding(padding: EdgeInsets.only(left: width*0.03,right: width*0.03,bottom: height*0.01),child: TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              hintText: "Mobile Number",
              hintStyle: TextStyle(color: Colors.black,fontSize: 14),
              filled: true,
              fillColor: Color.fromRGBO(235, 235, 235, 1),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.map,color: Color.fromRGBO(25, 230, 255, 1),)),
          textAlign: TextAlign.center,
        ),),
        Padding(padding: EdgeInsets.only(left: width*0.03,right: width*0.03,bottom: height*0.01),child: TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              hintText: "Address",
              hintStyle: TextStyle(color: Colors.black,fontSize: 14),
              filled: true,
              fillColor: Color.fromRGBO(235, 235, 235, 1),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.location_on,color: Color.fromRGBO(25, 230, 255, 1),)),
          textAlign: TextAlign.center,
        ),),
        Padding(padding: EdgeInsets.only(left: width*0.03,right: width*0.03,bottom: height*0.01),child: TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              hintText: "Apt",
              hintStyle: TextStyle(color: Colors.black,fontSize: 14),
              filled: true,
              fillColor: Color.fromRGBO(235, 235, 235, 1),
              border: InputBorder.none,
              ),
          textAlign: TextAlign.center,
        ),),
        Row(children: [
          Expanded(child: Padding(padding: EdgeInsets.only(left: width*0.03,right: width*0.03,bottom: height*0.01),child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                hintText: "City",
                hintStyle: TextStyle(color: Colors.black,fontSize: 14),
                filled: true,
                fillColor: Color.fromRGBO(235, 235, 235, 1),
                border: InputBorder.none,
                ),
            textAlign: TextAlign.center,
          ),)),
          SizedBox(width: width*0.05,),
          Expanded(child: Padding(padding: EdgeInsets.only(left: width*0.03,right: width*0.03,bottom: height*0.01),child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                hintText: "State",
                hintStyle: TextStyle(color: Colors.black,fontSize: 14),
                filled: true,
                fillColor: Color.fromRGBO(235, 235, 235, 1),
                border: InputBorder.none,
                ),
            textAlign: TextAlign.center,
          ),))
        ],),
        Padding(padding: EdgeInsets.only(left: width*0.03,right: width*0.03,bottom: height*0.01),child: TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              hintText: "Old Password",
              hintStyle: TextStyle(color: Colors.black,fontSize: 14),
              filled: true,
              fillColor: Color.fromRGBO(235, 235, 235, 1),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.lock,color: Color.fromRGBO(25, 230, 255, 1),)),
          textAlign: TextAlign.center,
        ),),
        Padding(padding: EdgeInsets.only(left: width*0.03,right: width*0.03,bottom: height*0.01),child: TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              hintText: "New Password",
              hintStyle: TextStyle(color: Colors.black,fontSize: 14),
              filled: true,
              fillColor: Color.fromRGBO(235, 235, 235, 1),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.lock,color: Color.fromRGBO(25, 230, 255, 1),)),
          textAlign: TextAlign.center,
        ),),
        Padding(padding: EdgeInsets.only(left: width*0.03,right: width*0.03,bottom: height*0.01),child: TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              hintText: "Confirm New Password",
              hintStyle: TextStyle(color: Colors.black,fontSize: 14),
              filled: true,
              fillColor: Color.fromRGBO(235, 235, 235, 1),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.person,color: Color.fromRGBO(25, 230, 255, 1),)),
          textAlign: TextAlign.center,
        ),)
      ],),
    );
  }
}
