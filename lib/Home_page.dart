import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;
import 'package:video_player_app/video_info.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List info=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value){
      setState(() {
        info = json.decode(value);
      });
    });
  }
  
  @override
  void initState(){
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Fit Challenge",
                  style: TextStyle(
                    fontSize: 30,
                    color: color.AppColor.homePageTitle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,size: 20,
                    color: color.AppColor.homePageIcons),
                Icon(Icons.calendar_today_outlined,
                  size: 20, color: color.AppColor.homePageIcons,),
                Icon(Icons.arrow_forward_ios,size: 20,
                    color: color.AppColor.homePageIcons),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text(
                  "Seu Plano",
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageSubtitle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageDetail,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 5,),
                InkWell(
                  onTap: (){
                    Get.to(()=>VideoInfo());
                  },
                  child: Icon(Icons.arrow_forward,size: 20,
                      color: color.AppColor.homePageDetail),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.AppColor.gradientFirst,
                  color.AppColor.gradientSecond.withOpacity(1),
                ],begin: Alignment.bottomLeft,
                end: Alignment.centerRight
              ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(10, 10),
                    blurRadius: 20,
                    color: color.AppColor.gradientSecond
                  )
                ]
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_today,size: 20,
                          color: color.AppColor.homePageContainerTextSmall),
                      SizedBox(width:5,),
                      Text(
                        "Wenesday",
                        style: TextStyle(
                          fontSize: 16,
                          color: color.AppColor.homePageContainerTextSmall,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "30 minutos",
                        style: TextStyle(
                          fontSize: 14,
                          color: color.AppColor.homePageContainerTextSmall,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Text(
                    "Plan",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.homePageContainerTextSmall,
                    ),
                  ),
                  Text(
                    "Body Lower",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.homePageContainerTextSmall,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Hard",
                        style: TextStyle(
                          fontSize: 16,
                          color: color.AppColor.homePageContainerTextSmall,
                        ),
                      ),
                      Expanded(child: Container()),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: color.AppColor.gradientFirst,
                              blurRadius: 10,
                              offset: Offset(4, 8)
                            )
                          ]
                        ),
                        child: Icon(Icons.play_circle_fill,size: 50,
                            color: color.AppColor.homePageContainerTextSmall),
                      ),
                    ],
                  ),
                ],
              ),
              )
            ),
            SizedBox(height: 5,),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 40),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/card.jpg"
                        ),
                        fit: BoxFit.fill
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          offset: Offset(8, 10),
                          color: color.AppColor.gradientSecond.withOpacity(0.5)
                        )
                      ]
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(bottom: 15, right: 200),
                    decoration: BoxDecoration(
                       // color: Colors.redAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/figure.png"
                            ),
                            //fit: BoxFit.fill
                        ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    //color: Colors.redAccent.withOpacity(0.3),
                    margin: const EdgeInsets.only(left: 185,right: 10,top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Make Yourself Fit",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.homePageDetail
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Keep it up",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: color.AppColor.homePagePlanColor
                          ),
                        ),
                        Text(
                          "Stick to your plan",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: color.AppColor.homePagePlanColor
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Choose another plan below",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: color.AppColor.homePageTitle
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Expanded(child: ListView.builder(
                itemCount: (info.length.toDouble()/2).toInt(),
                itemBuilder:(_, i){
                  int a = 2*i;
                  int b = 2*i + 1;
              return Row(
                children: [
                  Container(
                    height: 170,
                    width: (MediaQuery.of(context).size.width-90)/2,
                    margin: const EdgeInsets.only(top: 10, left: 5,bottom: 20),
                    padding: EdgeInsets.only(bottom: 5) ,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          info[a]['img']
                        )
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(5, 5),
                          color: color.AppColor.gradientSecond.withOpacity(0.1)
                        ),
                        BoxShadow(
                            blurRadius: 3,
                            offset: Offset(-5, -5),
                            color: color.AppColor.gradientSecond.withOpacity(0.1)
                        ),
                      ]
                    ),
                    child: Center(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          info[a]['title'],
                          style: TextStyle(
                            fontSize: 18,
                            color: color.AppColor.homePageDetail
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 170,
                    width: (MediaQuery.of(context).size.width-90)/2,
                    margin: const EdgeInsets.only(top: 10, left: 5,bottom: 20),
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(
                                info[b]['img']
                            )
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              offset: Offset(5, 5),
                              color: color.AppColor.gradientSecond.withOpacity(0.1)
                          ),
                          BoxShadow(
                              blurRadius: 3,
                              offset: Offset(-5, -5),
                              color: color.AppColor.gradientSecond.withOpacity(0.1)
                          ),
                        ]
                    ),
                    child: Center(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          info[b]['title'],
                          style: TextStyle(
                              fontSize: 18,
                              color: color.AppColor.homePageDetail
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } ))

          ],
        ),
      ),
    );
  }
}
