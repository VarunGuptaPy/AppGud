import 'dart:html';
import 'dart:ui';
import 'package:Appgud/globals.dart';
import 'package:Appgud/mobile_website.dart';
import 'package:Appgud/widgets/gradientButton.dart';
import 'package:Appgud/widgets/gradientOutlinedButton.dart';
import 'package:Appgud/widgets/gradientText.dart';
import 'package:Appgud/widgets/input_get_in_touch.dart';
import 'package:Appgud/widgets/our_services_card.dart';
import 'package:Appgud/widgets/process_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Webiste extends StatefulWidget {
  const Webiste({super.key});

  @override
  State<Webiste> createState() => _WebisteState();
}

class _WebisteState extends State<Webiste> {
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      print(scrollController.offset);
    });
  }

//0,750,2145,6249
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 1300
        ? Scaffold(
            body: SingleChildScrollView(
              controller: scrollController,
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      "assets/topVector2.png",
                      height: 480,
                    ),
                    top: 50,
                    right: 0,
                  ),
                  Positioned(
                    child: Image.asset(
                      "assets/topVector1.png",
                      height: 500,
                    ),
                    top: 40,
                    right: 0,
                  ),
                  Column(
                    children: [
                      Center(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 1300),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "DDB_Logo.png",
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          scrollController.animateTo(0,
                                              duration: Duration(seconds: 1),
                                              curve: Curves.easeOut);
                                        },
                                        child: Text(
                                          "Home",
                                          style: GoogleFonts.muktaMalar(
                                            fontSize: 22,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          scrollController.animateTo(750,
                                              duration: Duration(seconds: 1),
                                              curve: Curves.easeOut);
                                        },
                                        child: Text(
                                          "About",
                                          style: GoogleFonts.muktaMalar(
                                            fontSize: 22,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          scrollController.animateTo(2145,
                                              duration: Duration(seconds: 1),
                                              curve: Curves.easeOut);
                                        },
                                        child: Text(
                                          "Services",
                                          style: GoogleFonts.muktaMalar(
                                            fontSize: 22,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          scrollController.animateTo(6249,
                                              duration: Duration(seconds: 1),
                                              curve: Curves.easeOut);
                                        },
                                        child: Text(
                                          "Contact Us",
                                          style: GoogleFonts.muktaMalar(
                                            fontSize: 22,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  GradientButton(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xff36ACBE),
                                            Color(0xff41B884)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight),
                                      onPressed: () {
                                        scrollController.animateTo(6249,
                                            duration: Duration(seconds: 1),
                                            curve: Curves.easeOut);
                                      },
                                      child: Text(
                                        "Get A Quote",
                                        style: GoogleFonts.muktaMalar(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 1,
                                color: primaryColor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 70,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "WE",
                                            style: TextStyle(
                                                fontFamily: "NotoSerif",
                                                fontSize: 90,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          MyOutlinedButton(
                                              onPressed: () {},
                                              style: OutlinedButton.styleFrom(
                                                side: BorderSide.none,
                                                disabledMouseCursor:
                                                    MouseCursor.defer,
                                              ),
                                              gradient: LinearGradient(
                                                  colors: [
                                                    primaryColor,
                                                    secondaryColor
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight),
                                              child: GradientText(
                                                "Create",
                                                gradient: LinearGradient(
                                                    colors: [
                                                      primaryColor,
                                                      secondaryColor
                                                    ],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.centerRight),
                                                style: TextStyle(
                                                  fontFamily: "NotoSerif",
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 90,
                                                ),
                                              ))
                                        ],
                                      ),
                                      Text(
                                        "DIGITAL",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: "NotoSerif",
                                          fontSize: 90,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "_SOLUTIONS",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: "NotoSerif",
                                          fontSize: 90,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 600,
                                        child: Text(
                                          "As a tight-knit team of experts, we create memorable and emotional websites, digital experiences, and native apps.",
                                          style: GoogleFonts.muktaMalar(
                                            fontSize: 22,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          GradientButton(
                                              width: 170,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xff36ACBE),
                                                    Color(0xff41B884)
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight),
                                              onPressed: () {
                                                scrollController.animateTo(6249,
                                                    duration:
                                                        Duration(seconds: 1),
                                                    curve: Curves.easeOut);
                                              },
                                              child: Text(
                                                "Get A Quote",
                                                style: GoogleFonts.muktaMalar(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),
                                              )),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          SizedBox(
                                            height: 44,
                                            width: 170,
                                            child: MyOutlinedButton(
                                              onPressed: () {
                                                scrollController.animateTo(2145,
                                                    duration:
                                                        Duration(seconds: 1),
                                                    curve: Curves.easeOut);
                                              },
                                              child: Text(
                                                "Services",
                                                style: GoogleFonts.muktaMalar(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              gradient: LinearGradient(
                                                  colors: [
                                                    primaryColor,
                                                    secondaryColor
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/desk.png",
                                    height: 550,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 10,
                              child: Image.asset("assets/BottomVector2.png"),
                            ),
                            Image.asset("assets/BoottomVector1.png"),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 1300),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "AB",
                                    style: TextStyle(
                                        fontSize: 90,
                                        fontFamily: "NotoSerif",
                                        color: Color(0xff2b2b2b)),
                                  ),
                                  Image.asset("assets/aboutUsImage1.png"),
                                  Text(
                                    "UT US",
                                    style: TextStyle(
                                        fontSize: 90,
                                        fontFamily: "NotoSerif",
                                        color: Color(0xff2b2b2b)),
                                  ),
                                ],
                              ),
                              Container(
                                width: 1300,
                                height: 1,
                                color: primaryColor,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/aboutUsImage2.png",
                                    height: 350,
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(maxWidth: 600),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "In our team, developers work alongside designers,strategists and analysts. Cuberto doesn't do cookie-cutter solutions and we build products exactly as they were during the design phase, no short cuts or simplifications.",
                                          style: GoogleFonts.muktaMalar(
                                              fontSize: 22,
                                              color: Color(0xff2b2b2b)),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          "We're driven by user centered design that drives productivity and increases revenue. Our expertise and ingenuity are remarkable, yet we always strive to outdo and outperform our previous achievements.",
                                          style: GoogleFonts.muktaMalar(
                                              fontSize: 22,
                                              color: Color(0xff2b2b2b)),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        GradientButton(
                                            onPressed: () {},
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: LinearGradient(
                                              colors: [
                                                secondaryColor,
                                                primaryColor,
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ),
                                            child: Text(
                                              "More about us",
                                              style: GoogleFonts.muktaMalar(
                                                color: Colors.white,
                                                fontSize: 22,
                                              ),
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              )
                            ],
                          ),
                        )),
                        color: Colors.white,
                      ),
                      Container(
                        color: Color(0XFF1414),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 1300),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 100,
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ProcessWidget(
                                            no: 1,
                                            title:
                                                "Idea Generation and Conceptualisation",
                                            description:
                                                "Collaborate with clients, conduct market research to identify trends and user needs, and then create conceptual designs to address their goals.",
                                            image: "assets/innovation_icon.png",
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0),
                                            child: Container(
                                              color: Color(0xffD1D1D1),
                                              width: 2,
                                              height: 150,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ProcessWidget(
                                            no: 2,
                                            title:
                                                "Planning and Feasibility Analysis",
                                            description:
                                                "Discuss project requirements, assess feasibility, and define scope, milestones, and timelines during planning.",
                                            image: "assets/plan_icon.png",
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0),
                                            child: Container(
                                              color: Color(0xffD1D1D1),
                                              width: 2,
                                              height: 150,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ProcessWidget(
                                            no: 3,
                                            title: "Design Phase",
                                            description:
                                                "Craft UI/UX with wireframes, plan system architecture, and choose frameworks in technology selection.",
                                            image: "assets/design_icon.png",
                                          ),
                                          SizedBox(
                                            width: 60,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ProcessWidget(
                                            no: 4,
                                            title: "Development",
                                            description:
                                                "Code the solution based on design and requirements, implement robust quality assurance processes, and utilize agile development for iterative changes and improvements.",
                                            image:
                                                "assets/Development_icon.png",
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0),
                                            child: Container(
                                              color: Color(0xffD1D1D1),
                                              width: 2,
                                              height: 150,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ProcessWidget(
                                            no: 5,
                                            title: "Deployment",
                                            description:
                                                "Prepare, deploy, and support the product seamlessly from release management to post-launch, addressing immediate issues and feedback with an effective deployment strategy.",
                                            image: "assets/deployment.png",
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0),
                                            child: Container(
                                              color: Color(0xffD1D1D1),
                                              width: 2,
                                              height: 150,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ProcessWidget(
                                            no: 6,
                                            title: "Maintenance and Support",
                                            description:
                                                "Continuously update and enhance the product through bug fixing and updates, offering consistent customer support for ongoing troubleshooting and assistance.",
                                            image: "assets/support_icon.png",
                                          ),
                                          SizedBox(
                                            width: 60,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 1300),
                          child: Column(children: [
                            Text(
                              "OUR SERVICES",
                              style: GoogleFonts.muktaMalar(
                                  fontSize: 42,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "DESIGN",
                                  style: TextStyle(
                                    fontFamily: "NotoSerif",
                                    fontSize: 128,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Image.asset(
                                  "assets/Design_Graphic.png",
                                  height: 350,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              height: 1,
                              width: MediaQuery.of(context).size.width,
                              color: primaryColor,
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/star.png"),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "DESIGN",
                                            softWrap: true,
                                            style: GoogleFonts.muktaMalar(
                                              fontSize: 22,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          SizedBox(
                                            width: 700,
                                            child: Text(
                                              "We strongly believe in the power of design and it's the core of everything we do. Our user centric designs encourage productivity that further enhances engagement.",
                                              softWrap: true,
                                              style: GoogleFonts.muktaMalar(
                                                  color: Colors.white,
                                                  fontSize: 30),
                                            ),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Areas",
                                            softWrap: true,
                                            style: GoogleFonts.muktaMalar(
                                              fontSize: 22,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          border: Border.all(
                                                            color: Colors.white,
                                                            width: 3,
                                                          )),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8.0,
                                                                vertical: 2.0),
                                                        child: Text(
                                                          "UX & UI DESIGN",
                                                          style: GoogleFonts
                                                              .muktaMalar(
                                                                  fontSize: 22),
                                                        ),
                                                      )),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          border: Border.all(
                                                            color: Colors.white,
                                                            width: 3,
                                                          )),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8.0,
                                                                vertical: 2.0),
                                                        child: Text(
                                                          "Packaging Design",
                                                          style: GoogleFonts
                                                              .muktaMalar(
                                                                  fontSize: 22),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          border: Border.all(
                                                            color: Colors.white,
                                                            width: 3,
                                                          )),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8.0,
                                                                vertical: 2.0),
                                                        child: Text(
                                                          "Marketing Collateral",
                                                          style: GoogleFonts
                                                              .muktaMalar(
                                                                  fontSize: 22),
                                                        ),
                                                      )),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          border: Border.all(
                                                            color: Colors.white,
                                                            width: 3,
                                                          )),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8.0,
                                                                vertical: 2.0),
                                                        child: Text(
                                                          "Illustration",
                                                          style: GoogleFonts
                                                              .muktaMalar(
                                                                  fontSize: 22),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ]),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DEVELOPMENT",
                                  style: TextStyle(
                                      fontFamily: "NotoSerif",
                                      fontSize: 128,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Container(
                                  height: 2,
                                  width: 1300,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/Develop_graphic.png"),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "DEVELOPMENT",
                                                softWrap: true,
                                                style: GoogleFonts.muktaMalar(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              SizedBox(
                                                width: 550,
                                                child: Text(
                                                  "At DDB, we combine unique designs with futuristic technologies stacks to build efficient and engaging digital solutions.",
                                                  softWrap: true,
                                                  style: GoogleFonts.muktaMalar(
                                                      color: Colors.white,
                                                      fontSize: 30),
                                                ),
                                              ),
                                            ]),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Areas",
                                                softWrap: true,
                                                style: GoogleFonts.muktaMalar(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .white,
                                                                    width: 3,
                                                                  )),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        8.0,
                                                                    vertical:
                                                                        2.0),
                                                            child: Text(
                                                              "Websites",
                                                              style: GoogleFonts
                                                                  .muktaMalar(
                                                                      fontSize:
                                                                          22),
                                                            ),
                                                          )),
                                                      SizedBox(
                                                        width: 30,
                                                      ),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .white,
                                                                    width: 3,
                                                                  )),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        8.0,
                                                                    vertical:
                                                                        2.0),
                                                            child: Text(
                                                              "WebApps",
                                                              style: GoogleFonts
                                                                  .muktaMalar(
                                                                      fontSize:
                                                                          22),
                                                            ),
                                                          )),
                                                      SizedBox(
                                                        width: 30,
                                                      ),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .white,
                                                                    width: 3,
                                                                  )),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        8.0,
                                                                    vertical:
                                                                        2.0),
                                                            child: Text(
                                                              "MVPs",
                                                              style: GoogleFonts
                                                                  .muktaMalar(
                                                                      fontSize:
                                                                          22),
                                                            ),
                                                          )),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .white,
                                                                    width: 3,
                                                                  )),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        8.0,
                                                                    vertical:
                                                                        2.0),
                                                            child: Text(
                                                              "Mobile Applications",
                                                              style: GoogleFonts
                                                                  .muktaMalar(
                                                                      fontSize:
                                                                          22),
                                                            ),
                                                          )),
                                                      SizedBox(
                                                        width: 30,
                                                      ),
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                  border: Border
                                                                      .all(
                                                                    color: Colors
                                                                        .white,
                                                                    width: 3,
                                                                  )),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        8.0,
                                                                    vertical:
                                                                        2.0),
                                                            child: Text(
                                                              "Custom Software",
                                                              style: GoogleFonts
                                                                  .muktaMalar(
                                                                      fontSize:
                                                                          22),
                                                            ),
                                                          )),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "BRANDING",
                                      style: TextStyle(
                                        fontFamily: "NotoSerif",
                                        fontSize: 128,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Image.asset(
                                      "assets/Brand_Graphic.png",
                                      height: 300,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 1300,
                                  height: 2,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/star.png"),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "BRANDING",
                                                softWrap: true,
                                                style: GoogleFonts.muktaMalar(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              SizedBox(
                                                width: 700,
                                                child: Text(
                                                  "We firmly believe in creating a distinct identity for a business in the minds of its target audience as well as the general population.",
                                                  softWrap: true,
                                                  style: GoogleFonts.muktaMalar(
                                                      color: Colors.white,
                                                      fontSize: 30),
                                                ),
                                              ),
                                            ]),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Areas",
                                                softWrap: true,
                                                style: GoogleFonts.muktaMalar(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      border: Border.all(
                                                        color: Colors.white,
                                                        width: 3,
                                                      )),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 2.0),
                                                    child: Text(
                                                      "Brand Logo",
                                                      style: GoogleFonts
                                                          .muktaMalar(
                                                              fontSize: 22),
                                                    ),
                                                  )),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      border: Border.all(
                                                        color: Colors.white,
                                                        width: 3,
                                                      )),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 2.0),
                                                    child: Text(
                                                      "Brand Identity",
                                                      style: GoogleFonts
                                                          .muktaMalar(
                                                              fontSize: 22),
                                                    ),
                                                  )),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      border: Border.all(
                                                        color: Colors.white,
                                                        width: 3,
                                                      )),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 2.0),
                                                    child: Text(
                                                      "Visual Identity",
                                                      style: GoogleFonts
                                                          .muktaMalar(
                                                              fontSize: 22),
                                                    ),
                                                  )),
                                            ]),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Center(
                              child: Text(
                                "DOMAINS",
                                style: GoogleFonts.muktaMalar(
                                    fontSize: 42,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OurServicesCard(
                                        context: context,
                                        title: "ED-TECH",
                                        image: "assets/EdTech.png"),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    OurServicesCard(
                                        context: context,
                                        title: "FIN-TECH",
                                        image: "assets/Fintech.png"),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OurServicesCard(
                                        context: context,
                                        title: "HEALTH-TECH",
                                        image: "assets/HealthTech.png"),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    OurServicesCard(
                                        context: context,
                                        title: "E-COMMERCE",
                                        image: "assets/Ecommerc.png"),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OurServicesCard(
                                        context: context,
                                        title: "ENTERTAINMENT",
                                        image: "assets/Entertainment.png"),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    OurServicesCard(
                                        context: context,
                                        title: "REALSTATES",
                                        image: "assets/RealState.png"),
                                  ],
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Center(
                            child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 1300),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "OUR TECH STACK",
                                style: GoogleFonts.muktaMalar(
                                  fontSize: 42,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xff2b2b2b,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset("assets/techStack1.png"),
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset("assets/tedhStack2.png"),
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset("assets/techStack3.png"),
                            ],
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 1300),
                          child: Column(children: [
                            Container(
                              color: Colors.white,
                              width: 1300,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 30, horizontal: 80),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Get In Touch",
                                            style: GoogleFonts.muktaMalar(
                                              fontSize: 42,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: 500,
                                            child: Text(
                                              "We will discuss upon your fabulous idea. and work on that and make it into reality.",
                                              style: GoogleFonts.muktaMalar(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff79747E)),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Row(children: [
                                            CircleAvatar(
                                                radius: 40,
                                                child: Icon(
                                                  Icons.phone_in_talk,
                                                  size: 30,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "+91 7905981040",
                                              style: GoogleFonts.muktaMalar(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xff2b2b2b)),
                                            ),
                                          ]),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(children: [
                                            CircleAvatar(
                                                radius: 40,
                                                child: Icon(
                                                  Icons.email_outlined,
                                                  size: 30,
                                                  color: Colors.white,
                                                )),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "info@appgud.com",
                                              style: GoogleFonts.muktaMalar(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xff2b2b2b)),
                                            ),
                                          ]),
                                        ],
                                      ),
                                      Container(
                                        color: Colors.white,
                                        width: 600,
                                        child: Padding(
                                          padding: const EdgeInsets.all(30.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  GetInTouchInput(
                                                      label: "First Name",
                                                      textEditingController:
                                                          firstNameController,
                                                      hintText: "Varun"),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  GetInTouchInput(
                                                      label: "Last Name",
                                                      textEditingController:
                                                          lastNameController,
                                                      hintText: "Gupta"),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Row(
                                                children: [
                                                  GetInTouchInput(
                                                      label: "Phone Number",
                                                      textEditingController:
                                                          phoneNumberController,
                                                      hintText:
                                                          "+91 9876543210"),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  GetInTouchInput(
                                                      label: "Email Address",
                                                      textEditingController:
                                                          emailController,
                                                      hintText:
                                                          "example@youremail.com"),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Text(
                                                "Leave A message",
                                                style: GoogleFonts.muktaMalar(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                              TextField(
                                                keyboardType:
                                                    TextInputType.multiline,
                                                maxLines: null,
                                                controller: messageController,
                                                style: TextStyle(
                                                    color: Colors.grey),
                                                decoration: InputDecoration(
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey),
                                                  hintText:
                                                      "Hello! I would like to get in touch",
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              GradientButton(
                                                  width: 170,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        Color(0xff36ACBE),
                                                        Color(0xff41B884)
                                                      ],
                                                      begin: Alignment.topLeft,
                                                      end: Alignment
                                                          .bottomRight),
                                                  onPressed: () {
                                                    if (firstNameController.text.isEmpty ||
                                                        lastNameController
                                                            .text.isEmpty ||
                                                        phoneNumberController
                                                            .text.isEmpty ||
                                                        emailController
                                                            .text.isEmpty ||
                                                        messageController
                                                            .text.isEmpty) {
                                                      showDialog(
                                                          context: context,
                                                          builder: (context) {
                                                            return AlertDialog(
                                                              title:
                                                                  Text("Error"),
                                                              content: Text(
                                                                  "Please fill all the fields"),
                                                              actions: [
                                                                TextButton(
                                                                    child: Text(
                                                                        "Close"),
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    })
                                                              ],
                                                            );
                                                          });
                                                    } else {
                                                      sendEmail(
                                                          emailAddress:
                                                              emailController
                                                                  .text,
                                                          firstName:
                                                              firstNameController
                                                                  .text,
                                                          lastName:
                                                              lastNameController
                                                                  .text,
                                                          phoneNo:
                                                              phoneNumberController
                                                                  .text,
                                                          body:
                                                              messageController
                                                                  .text);
                                                      emailController.text = "";
                                                      firstNameController.text =
                                                          "";
                                                      lastNameController.text =
                                                          "";
                                                      phoneNumberController
                                                          .text = "";
                                                      messageController.text =
                                                          "";
                                                      showDialog(
                                                          context: context,
                                                          builder: (context) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                "Congrats :)",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .green,
                                                                    fontSize:
                                                                        20),
                                                              ),
                                                              content: Text(
                                                                  "Email is sent successfully! :)"),
                                                              actions: [
                                                                TextButton(
                                                                    child: Text(
                                                                        "Close"),
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    })
                                                              ],
                                                            );
                                                          });
                                                    }
                                                  },
                                                  child: Text(
                                                    "Get A Quote",
                                                    style:
                                                        GoogleFonts.muktaMalar(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: 100,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              width: 1300,
                              height: 150,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/DDB_Logo.png"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    SizedBox(
                                      width: 350,
                                      child: Text(
                                        "We Design, We Build, We Develop, You grow.:)",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.muktaMalar(
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    SizedBox(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                            onTap: () async {
                                              final Uri url = Uri.parse(
                                                  "https://www.facebook.com/share/SznPKuU8y38neJpN/?mibextid=qi2Omg");
                                              if (await launchUrl(url)) {
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            },
                                            child: Image.asset(
                                                "assets/facebookIcon.png"),
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              final Uri url = Uri.parse(
                                                  "https://www.instagram.com/appgudtechnologies?igsh=MWNybnVtcXZ0ZHlldQ==");
                                              if (await launchUrl(url)) {
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            },
                                            child: Image.asset(
                                                "assets/instagram_icon.png"),
                                          ),
                                          GestureDetector(
                                              onTap: () async {
                                                final Uri url = Uri.parse(
                                                    "https://www.linkedin.com/company/appgud/?viewAsMember=true");
                                                if (await launchUrl(url)) {
                                                } else {
                                                  throw 'Could not launch $url';
                                                }
                                              },
                                              child: Image.asset(
                                                  "assets/linkedin.png")),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Container(
                                      width: 700,
                                      height: 1,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            scrollController.animateTo(0,
                                                duration: Duration(seconds: 1),
                                                curve: Curves.easeOut);
                                          },
                                          child: Text(
                                            "Home",
                                            style: GoogleFonts.muktaMalar(
                                              fontSize: 22,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            scrollController.animateTo(750,
                                                duration: Duration(seconds: 1),
                                                curve: Curves.easeOut);
                                          },
                                          child: Text(
                                            "About",
                                            style: GoogleFonts.muktaMalar(
                                              fontSize: 22,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            scrollController.animateTo(2145,
                                                duration: Duration(seconds: 1),
                                                curve: Curves.easeOut);
                                          },
                                          child: Text(
                                            "Services",
                                            style: GoogleFonts.muktaMalar(
                                              fontSize: 22,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            scrollController.animateTo(6249,
                                                duration: Duration(seconds: 1),
                                                curve: Curves.easeOut);
                                          },
                                          child: Text(
                                            "Contact Us",
                                            style: GoogleFonts.muktaMalar(
                                              fontSize: 22,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        : MobileWebsite();
  }
}
