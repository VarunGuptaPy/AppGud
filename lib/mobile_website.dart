import 'package:Appgud/globals.dart';
import 'package:Appgud/widgets/gradientButton.dart';
import 'package:Appgud/widgets/gradientOutlinedButton.dart';
import 'package:Appgud/widgets/gradientText.dart';
import 'package:Appgud/widgets/input_get_in_touch.dart';
import 'package:Appgud/widgets/our_services_card.dart';
import 'package:Appgud/widgets/process_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileWebsite extends StatefulWidget {
  const MobileWebsite({super.key});

  @override
  State<MobileWebsite> createState() => _MobileWebsiteState();
}

class _MobileWebsiteState extends State<MobileWebsite> {
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  ScrollController scrollController = ScrollController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      print(scrollController.offset);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              trailing: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              onTap: () {
                scrollController.animateTo(0,
                    duration: Duration(seconds: 1), curve: Curves.easeOut);
                Navigator.pop(context);
              },
              title: Text(
                "Home",
                style: GoogleFonts.muktaMalar(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                scrollController.animateTo(789,
                    duration: Duration(seconds: 1), curve: Curves.easeOut);
                Navigator.pop(context);
              },
              title: Text(
                "About",
                style: GoogleFonts.muktaMalar(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                scrollController.animateTo(3430,
                    duration: Duration(seconds: 1), curve: Curves.easeOut);
                Navigator.pop(context);
              },
              title: Text(
                "Services",
                style: GoogleFonts.muktaMalar(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                scrollController.animateTo(6519,
                    duration: Duration(seconds: 1), curve: Curves.easeOut);
                Navigator.pop(context);
              },
              title: Text(
                "Contact Us",
                style: GoogleFonts.muktaMalar(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: false,
        title: Image.asset(
          "assets/DDB_Logo.png",
          height: 80,
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(
                "assets/topVector2.png",
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              top: 10,
              right: 0,
            ),
            Positioned(
              child: Image.asset(
                "assets/topVector1.png",
                height: MediaQuery.of(context).size.height * 0.35,
              ),
              top: 30,
              right: 0,
            ),
            Column(
              children: [
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width - 40),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Center(
                            child: Image.asset(
                          "assets/desk.png",
                          height: MediaQuery.of(context).size.height * 0.5,
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WE",
                              style: TextStyle(
                                fontFamily: "NotoSerif",
                                fontSize: 29,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            MyOutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide.none,
                                  disabledMouseCursor: MouseCursor.defer,
                                ),
                                gradient: LinearGradient(
                                    colors: [primaryColor, secondaryColor],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                child: GradientText(
                                  "Create",
                                  gradient: LinearGradient(
                                      colors: [primaryColor, secondaryColor],
                                      begin: Alignment.topLeft,
                                      end: Alignment.centerRight),
                                  style: TextStyle(
                                    fontFamily: "NotoSerif",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 28,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "DIGITAL SOLUTIONS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "NotoSerif",
                            fontSize: 28,
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 500),
                          child: Text(
                            "As a tight-knit team of experts, we create memorable and emotional websites, digital experiences and native apps",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: GradientButton(
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
                                    scrollController.animateTo(6519,
                                        duration: Duration(seconds: 1),
                                        curve: Curves.easeOut);
                                  },
                                  child: Text(
                                    "Get A Quote",
                                    style: GoogleFonts.muktaMalar(
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width >
                                                  380
                                              ? 20
                                              : 16,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 44,
                                child: MyOutlinedButton(
                                  onPressed: () {
                                    scrollController.animateTo(3430,
                                        duration: Duration(seconds: 1),
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
                                      colors: [primaryColor, secondaryColor],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Stack(
                    children: [
                      Positioned(
                        height: 150,
                        left: 10,
                        child: Image.asset("assets/BottomVector2.png"),
                      ),
                      Image.asset(
                        "assets/BoottomVector1.png",
                        height: 100,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 40),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "AB",
                                style: TextStyle(
                                  fontFamily: "NotoSerif",
                                  fontSize: 50,
                                  color: Colors.black,
                                ),
                              ),
                              Image.asset(
                                "assets/aboutUsImage1.png",
                                height: 50,
                              ),
                              Text(
                                "UT US",
                                style: TextStyle(
                                  fontFamily: "NotoSerif",
                                  fontSize: 50,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Center(
                              child: Image.asset(
                            "assets/aboutUsImage2.png",
                            height: 400,
                          )),
                          Text(
                            "In our team, developers work alongside designers, strategists and analysts. Cuberto doesn't do cookie-cutter solutions and we build products exactly as they were during the design phase, no short cuts or simplifications.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.muktaMalar(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "We're driven by user‑centered design that drives productivity and increases revenue. Our expertise and ingenuity are remarkable, yet we always strive to outdo and outperform our previous achievements.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.muktaMalar(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GradientButton(
                              onPressed: () {},
                              borderRadius: BorderRadius.circular(20),
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
                              )),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width - 40),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ProcessWidget(
                            no: 1,
                            title: "Idea Generation and Conceptualisation",
                            description:
                                "Collaborate with clients, conduct market research to identify trends and user needs, and then create conceptual designs to address their goals.",
                            image: "assets/innovation_icon.png",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 300,
                            color: Colors.white,
                            height: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ProcessWidget(
                            right: true,
                            no: 2,
                            title: "Planning and Feasibility Analysis",
                            description:
                                "Discuss project requirements, assess feasibility, and define scope, milestones, and timelines during planning.",
                            image: "assets/plan_icon.png",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 300,
                            color: Colors.white,
                            height: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ProcessWidget(
                            no: 3,
                            title: "Design Phase",
                            description:
                                "Craft UI/UX with wireframes, plan system architecture, and choose frameworks in technology selection.",
                            image: "assets/design_icon.png",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 300,
                            color: Colors.white,
                            height: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ProcessWidget(
                            right: true,
                            no: 4,
                            title: "Development",
                            description:
                                "Code the solution based on design and requirements, implement robust quality assurance processes, and utilize agile development for iterative changes and improvements.",
                            image: "assets/Development_icon.png",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 300,
                            color: Colors.white,
                            height: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ProcessWidget(
                            no: 5,
                            title: "Deployment",
                            description:
                                "Prepare, deploy, and support the product seamlessly from release management to post-launch, addressing immediate issues and feedback with an effective deployment strategy.",
                            image: "assets/deployment.png",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 300,
                            color: Colors.white,
                            height: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ProcessWidget(
                            right: true,
                            no: 6,
                            title: "Maintenance and Support",
                            description:
                                "Continuously update and enhance the product through bug fixing and updates, offering consistent customer support for ongoing troubleshooting and assistance.",
                            image: "assets/support_icon.png",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ]),
                  ),
                ),
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width - 40),
                    child: Column(children: [
                      Text(
                        "OUR SERVICES",
                        style: GoogleFonts.muktaMalar(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        "assets/Design_Graphic.png",
                        height: 400,
                      ),
                      Text(
                        "DESIGN",
                        style: TextStyle(
                          fontFamily: "NotoSerif",
                          fontSize: 50,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: primaryColor,
                        height: 4,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Design",
                        style: GoogleFonts.muktaMalar(fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "We strongly believe in the power of design and it’s the\ncore of everything we do. Our user centric designs\nencourage productivity that further enhances engagement.",
                        style: GoogleFonts.muktaMalar(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/star.png",
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                "AREAS",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 3,
                                              )),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 2.0),
                                            child: Text(
                                              "UX & UI DESIGN",
                                              style: GoogleFonts.muktaMalar(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                                  .size
                                                                  .width >
                                                              380
                                                          ? 12
                                                          : 8),
                                            ),
                                          )),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 3,
                                              )),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 2.0),
                                            child: Text(
                                              "Packaging Design",
                                              style: GoogleFonts.muktaMalar(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                                  .size
                                                                  .width >
                                                              380
                                                          ? 12
                                                          : 8),
                                            ),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 3,
                                              )),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 2.0),
                                            child: Text(
                                              "Marketing Collateral",
                                              style: GoogleFonts.muktaMalar(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                                  .size
                                                                  .width >
                                                              380
                                                          ? 12
                                                          : 8),
                                            ),
                                          )),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 3,
                                              )),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 2.0),
                                            child: Text(
                                              "Illustration",
                                              style: GoogleFonts.muktaMalar(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                                  .size
                                                                  .width >
                                                              380
                                                          ? 12
                                                          : 8),
                                            ),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // Row(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Text(
                          //         "Areas",
                          //         softWrap: true,
                          //         style: GoogleFonts.muktaMalar(
                          //           fontSize: 12,
                          //           color: Colors.white,
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         width: 10,
                          //       ),
                          //       Container(
                          //           decoration: BoxDecoration(
                          //               borderRadius: BorderRadius.circular(30),
                          //               border: Border.all(
                          //                 color: Colors.white,
                          //                 width: 3,
                          //               )),
                          //           child: Padding(
                          //             padding: const EdgeInsets.symmetric(
                          //                 horizontal: 8.0, vertical: 2.0),
                          //             child: Text(
                          //               "Brand Logo",
                          //               style: GoogleFonts.muktaMalar(
                          //                   fontSize: 12),
                          //             ),
                          //           )),
                          //       SizedBox(
                          //         width: 10,
                          //       ),
                          //       Container(
                          //           decoration: BoxDecoration(
                          //               borderRadius: BorderRadius.circular(30),
                          //               border: Border.all(
                          //                 color: Colors.white,
                          //                 width: 3,
                          //               )),
                          //           child: Padding(
                          //             padding: const EdgeInsets.symmetric(
                          //                 horizontal: 8.0, vertical: 2.0),
                          //             child: Text(
                          //               "Brand Identity",
                          //               style: GoogleFonts.muktaMalar(
                          //                   fontSize: 12),
                          //             ),
                          //           )),
                          //       SizedBox(
                          //         width: 10,
                          //       ),
                          //       Container(
                          //           decoration: BoxDecoration(
                          //               borderRadius: BorderRadius.circular(30),
                          //               border: Border.all(
                          //                 color: Colors.white,
                          //                 width: 3,
                          //               )),
                          //           child: Padding(
                          //             padding: const EdgeInsets.symmetric(
                          //                 horizontal: 8.0, vertical: 2.0),
                          //             child: Text(
                          //               "Visual Identity",
                          //               style: GoogleFonts.muktaMalar(
                          //                   fontSize: 12),
                          //             ),
                          //           )),
                          //     ]),
                        ],
                      ),
                      Image.asset(
                        "assets/Develop_graphic.png",
                        height: 400,
                      ),
                      Text(
                        "DEVELOPMENT",
                        style: TextStyle(
                          fontFamily: "NotoSerif",
                          fontSize:
                              MediaQuery.of(context).size.width > 412 ? 50 : 40,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: primaryColor,
                        height: 4,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Development",
                        style: GoogleFonts.muktaMalar(fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "At DDB, we combine unique designs with futuristic\ntechnologies’ stacks to build efficient and engaging\ndigital solutions.",
                        style: GoogleFonts.muktaMalar(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/star.png",
                            height: 30,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Areas",
                                  softWrap: true,
                                  style: GoogleFonts.muktaMalar(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 3,
                                                )),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 2.0),
                                              child: Text(
                                                "Websites",
                                                style: GoogleFonts.muktaMalar(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width >
                                                                380
                                                            ? 12
                                                            : 8),
                                              ),
                                            )),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 3,
                                                )),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 2.0),
                                              child: Text(
                                                "WebApps",
                                                style: GoogleFonts.muktaMalar(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width >
                                                                380
                                                            ? 12
                                                            : 8),
                                              ),
                                            )),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 3,
                                                )),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 2.0),
                                              child: Text(
                                                "MVPs",
                                                style: GoogleFonts.muktaMalar(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width >
                                                                380
                                                            ? 12
                                                            : 8),
                                              ),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 3,
                                                )),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 2.0),
                                              child: Text(
                                                "Mobile Applications",
                                                style: GoogleFonts.muktaMalar(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width >
                                                                380
                                                            ? 12
                                                            : 8),
                                              ),
                                            )),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                border: Border.all(
                                                  color: Colors.white,
                                                  width: 3,
                                                )),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0,
                                                      vertical: 2.0),
                                              child: Text(
                                                "Custom Software",
                                                style: GoogleFonts.muktaMalar(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                    .size
                                                                    .width >
                                                                380
                                                            ? 12
                                                            : 8),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                        ],
                      ),
                      Image.asset(
                        "assets/Brand_Graphic.png",
                        height: 400,
                      ),
                      Text(
                        "BRANDING",
                        style: TextStyle(
                          fontFamily: "NotoSerif",
                          fontSize: 50,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: primaryColor,
                        height: 4,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Branding",
                        style: GoogleFonts.muktaMalar(fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "At DDB, we combine unique designs with futuristic technologies’ stacks to build efficient and engaging digital solutions.",
                        style: GoogleFonts.muktaMalar(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Areas",
                              softWrap: true,
                              style: GoogleFonts.muktaMalar(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 2.0),
                                  child: Text(
                                    "Brand Logo",
                                    style: GoogleFonts.muktaMalar(
                                        fontSize:
                                            MediaQuery.of(context).size.width >
                                                    380
                                                ? 12
                                                : 8),
                                  ),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 2.0),
                                  child: Text(
                                    "Brand Identity",
                                    style: GoogleFonts.muktaMalar(
                                        fontSize:
                                            MediaQuery.of(context).size.width >
                                                    380
                                                ? 12
                                                : 8),
                                  ),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 2.0),
                                  child: Text(
                                    "Visual Identity",
                                    style: GoogleFonts.muktaMalar(
                                        fontSize:
                                            MediaQuery.of(context).size.width >
                                                    380
                                                ? 12
                                                : 8),
                                  ),
                                )),
                          ]),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 40,
                    ),
                    child: Column(children: [
                      Text(
                        "DOMAINS",
                        style: GoogleFonts.muktaMalar(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OurServicesCard(
                              context: context,
                              title: "ED-TECH",
                              image: "assets/EdTech.png"),
                          SizedBox(
                            width: 10,
                          ),
                          OurServicesCard(
                              context: context,
                              title: "FIN-TECH",
                              image: "assets/Fintech.png"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OurServicesCard(
                              context: context,
                              title: "HEALTH-TECH",
                              image: "assets/HealthTech.png"),
                          SizedBox(
                            width: 10,
                          ),
                          OurServicesCard(
                              context: context,
                              title: "E-COMMERCE",
                              image: "assets/Ecommerc.png"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OurServicesCard(
                              context: context,
                              title: "ENTERTAINMENT",
                              image: "assets/Entertainment.png"),
                          SizedBox(
                            width: 10,
                          ),
                          OurServicesCard(
                              context: context,
                              title: "REALSTATES",
                              image: "assets/RealState.png"),
                        ],
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Center(
                      child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width - 40),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "OUR TECH STACK",
                          style: GoogleFonts.muktaMalar(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(
                              0xff2b2b2b,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("assets/techStack_mobile.png"),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  )),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width - 40),
                    child: Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Get In Touch",
                              style: GoogleFonts.muktaMalar(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xff313033,
                                  )),
                            ),
                            Text(
                              "We will discuss upon your fabulous idea. and work on that and make it into reality.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.muktaMalar(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff79747E)),
                            ),
                            Column(children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        child: Icon(
                                          Icons.phone_in_talk,
                                          size: 15,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "+91 7905981040",
                                      style: GoogleFonts.muktaMalar(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff2b2b2b)),
                                    ),
                                  ]),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      radius: 20,
                                      child: Icon(
                                        Icons.email_outlined,
                                        size: 15,
                                        color: Colors.white,
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "info@appgud.com",
                                    style: GoogleFonts.muktaMalar(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff2b2b2b)),
                                  ),
                                ],
                              ),
                            ]),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GetInTouchInput(
                                    label: "First Name",
                                    textEditingController: firstNameController,
                                    hintText: "Varun"),
                                SizedBox(
                                  width: 30,
                                ),
                                GetInTouchInput(
                                    label: "Last Name",
                                    textEditingController: lastNameController,
                                    hintText: "Gupta"),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GetInTouchInput(
                                    label: "Phone Number",
                                    textEditingController:
                                        phoneNumberController,
                                    hintText: "+91 9876543210"),
                                SizedBox(
                                  width: 30,
                                ),
                                GetInTouchInput(
                                    label: "Email Address",
                                    textEditingController: emailController,
                                    hintText: "example@youremail.com"),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Leave A message",
                                  style: GoogleFonts.muktaMalar(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  style: TextStyle(color: Colors.black),
                                  controller: messageController,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.grey),
                                    hintText:
                                        "Hello! I would like to get in touch",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GradientButton(
                                width: 170,
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
                                  if (firstNameController.text.isEmpty ||
                                      lastNameController.text.isEmpty ||
                                      phoneNumberController.text.isEmpty ||
                                      emailController.text.isEmpty ||
                                      messageController.text.isEmpty) {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text("Error"),
                                            content: Text(
                                                "Please fill all the fields"),
                                            actions: [
                                              TextButton(
                                                  child: Text("Close"),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  })
                                            ],
                                          );
                                        });
                                  } else {
                                    sendEmail(
                                        emailAddress: emailController.text,
                                        firstName: firstNameController.text,
                                        lastName: lastNameController.text,
                                        phoneNo: phoneNumberController.text,
                                        body: messageController.text);
                                    emailController.text = "";
                                    firstNameController.text = "";
                                    lastNameController.text = "";
                                    phoneNumberController.text = "";
                                    messageController.text = "";
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text(
                                              "Congrats :)",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 20),
                                            ),
                                            content: Text(
                                                "Email is sent successfully! :)"),
                                            actions: [
                                              TextButton(
                                                  child: Text("Close"),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  })
                                            ],
                                          );
                                        });
                                  }
                                },
                                child: Text(
                                  "Get A Quote",
                                  style: GoogleFonts.muktaMalar(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset("assets/DDB_Logo.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "We Design, We Build, We Develop, You grow.:)",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              child: Image.asset("assets/facebookIcon.png"),
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
                              child: Image.asset("assets/instagram_icon.png"),
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
                                child: Image.asset("assets/linkedin.png")),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
