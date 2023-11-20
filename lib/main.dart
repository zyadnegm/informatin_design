import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  bool visable=false;
  Widget build(BuildContext context) {
    String describe =
        "I am a web developer with over 5 years of experience in the industry. I have a strong understanding of the full web development stack, from front-end technologies such as HTML, CSS, and JavaScript to back-end technologies such as PHP, MySQL, and Node.js. I am also proficient in using various web development frameworks and tools, such as React, Angular, and Laravel.";
    return ScreenUtilInit(
      designSize: const Size(1500, 750),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
                backgroundColor: Color(0Xff282A28),
                toolbarHeight: 80.h,
                title: Container(
                  margin: REdgeInsets.only(left: 130),
                  child: Text(
                    "James",
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                actions:
                [ScreenUtil().screenWidth>=600?
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: REdgeInsets.only(top: 30.0),
                        child: Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: REdgeInsets.only(top: 30.0),
                        child: Text(
                          "Portfolio",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: REdgeInsets.only(top: 30.0),
                        child: Text(
                          "resume",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: REdgeInsets.only(top: 30.0),
                        child: Text(
                          "About",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: REdgeInsets.only(top: 30.0),
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150.w,
                    ),
                  ],
                ):
                IconButton(onPressed: () {
                  visable= !visable;
                  setState(() {
                  });
                }, icon: Padding(
                  padding: REdgeInsets.only(right: 12.0),
                  child: Icon(Icons.menu),
                ))]
            ),
            body: SingleChildScrollView(
              child: ScreenUtil().screenWidth>=600?
              Column(
                children: [
                  SizedBox(height: 180.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                ""
                                    "I am James\n"
                                    "aWeb developer",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 44.sp,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 35),
                              child: Container(
                                width: 350.w,
                                child: Text(
                                  describe,
                                  textWidthBasis:TextWidthBasis.parent ,
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                              ),
                            ),
                            SizedBox(height: 23,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Hire",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.sp,
                                            color: Colors.white),
                                      ),style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(Colors.cyan))),
                                  SizedBox(width: 12,),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Portfolio",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.sp,
                                            color: Colors.cyan),
                                      ),
                                      style: ButtonStyle(
                                          backgroundColor: MaterialStatePropertyAll(Colors.white))),


                                ],
                              ),
                            ),
                          ]),
                      SizedBox(width: 80.w,),
                      Container(
                        width: 400.w,
                        height: 300.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 10.w),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("images/elon.jpg"),
                                fit: BoxFit.fill)),
                      )
                    ],
                  ),
                ],
              )
                  :Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: visable,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 140.h,
                          width: 250.w,
                          decoration: BoxDecoration(
                              color: Colors.white12,
                              shape: BoxShape.rectangle,
                              border: Border.all(color: Colors.white)
                          ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: REdgeInsets.only(top: 30.0),
                                  child: Text(
                                    "Home",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.h,),
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: REdgeInsets.only(top: 30.0),
                                  child: Text(
                                    "Portfolio",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.h,),
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: REdgeInsets.only(top: 30.0),
                                  child: Text(
                                    "resume",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.h,),
                              InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: REdgeInsets.only(top: 30.0),
                                  child: Text(
                                    "Contact",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400.w,
                    height: 300.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 10.w),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/elon.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      ""
                          "    I am James\n"
                          "aWeb developer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 44.sp,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Text(
                      describe,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 23,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {},style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.cyan)),
                            child: Text(
                              "Hire",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                  color: Colors.white),
                            )),
                        SizedBox(width: 12,),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Portfolio",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                  color: Colors.cyan),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Colors.white))),


                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
        );},);}
}