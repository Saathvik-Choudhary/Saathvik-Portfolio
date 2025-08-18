import 'package:saathvik/Data/profilePic_book.dart';
import 'package:saathvik/functions/Custom_backdrop_filter.dart';
import 'package:saathvik/functions/GoogleMap_Integration.dart';
import 'package:saathvik/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    double isdeviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth =
        isdeviceWidth < 1315 ? (MediaQuery.of(context).size.width + 194) : 1536;
    // return  NotResp();
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: containerStyle.padding,
                  margin: containerStyle.margin,
                  width: deviceWidth * containerStyle.widthAboutme,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BEYOND PORTFOLIO",
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.HeadingB, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Let's know more about me",
                        style: GoogleFonts.chakraPetch(textStyle: textStyles.B),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: CustomBox(
                  borderRadius: containerStyle.borderRadius,
                  margin: containerStyle.margin,
                  child: Container(
                    decoration: BoxDecoration(
                      color: containerStyle.color,
                      gradient: RadialGradient(
                        colors: [
                          const Color.fromARGB(255, 79, 79, 79),
                          containerStyle.color
                        ],
                        center: Alignment.bottomCenter,
                      ),
                      borderRadius: containerStyle.borderRadius,
                    ),
                    padding: containerStyle.paddingNew,
                    width: deviceWidth * containerStyle.widthAboutme,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                    color: textStyles.B.color,
                                    Icons.flare_rounded),
                                Text(
                                  "Latest Adventure",
                                  style: GoogleFonts.chakraPetch(
                                      textStyle: textStyles.HeadingB),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Solo Ride to Ooty",
                              style: GoogleFonts.chakraPetch(
                                  textStyle: textStyles.P1),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.15), // Shadow color
                                spreadRadius: 1, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: const Offset(
                                    0, 3), // Offset in the x and y direction
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              CustomBox(
                borderRadius: containerStyle.borderRadius,
                margin: containerStyle.margin,
                child: Container(
                  decoration: BoxDecoration(
                    color: containerStyle.color,
                    borderRadius: containerStyle.borderRadius,
                  ),
                  padding: containerStyle.paddingNew,
                  width: deviceWidth * containerStyle.widthAboutme,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Story Section 1
                      Expanded(
                        child: ScrollConfiguration(
                          behavior: const ScrollBehavior()
                              .copyWith(scrollbars: false),
                          child: SingleChildScrollView(
                            child: Column(

                              children: [
                                const SizedBox(height: 40),

                                // Story Section 1
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      fontSize: 16,
                                      height: 1.5,
                                      color: Colors.white,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'My journey in technology began during my ',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                      TextSpan(
                                        text: 'school days',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey),
                                      ),
                                      TextSpan(
                                        text:
                                            ', when I discovered the thrill of solving problems with computers. That curiosity led me to explore programming, web technologies, and the logic behind how systems work.',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),

                                // Story Section 2
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      fontSize: 16,
                                      height: 1.5,
                                      color: Colors.white,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'I went on to pursue my ',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                      TextSpan(
                                        text: 'B.Tech (Hons) in Computer Science and Engineering',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey),
                                      ),
                                      TextSpan(
                                        text:
                                            ', graduating with a CGPA of 8.2. Along the way, I explored fields ranging from application development to AI/ML, and even delved into the fascinating realms of ',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                      TextSpan(
                                        text: 'quantum computing',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey),
                                      ),
                                      TextSpan(
                                        text: ' and ',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                      TextSpan(
                                        text: 'physics',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey),
                                      ),
                                      TextSpan(
                                        text:
                                            ', strengthening my problem-solving mindset beyond code.',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),

                                // Story Section 3
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      fontSize: 16,
                                      height: 1.5,
                                      color: Colors.white,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'During my academic journey, I built impactful projects like a ',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                      TextSpan(
                                        text: 'notes & password manager app',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey),
                                      ),
                                      TextSpan(
                                        text: ', a ',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                      TextSpan(
                                        text: 'React-based expense tracker',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey),
                                      ),
                                      TextSpan(
                                        text:
                                            ', and cloud-integrated solutions with Docker, AWS, and Azure. I also took part in hackathons, including a Salesforce dependency mapping project, where I learned to work under tight deadlines and deliver results.',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),

                                // Story Section 4
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      fontSize: 16,
                                      height: 1.5,
                                      color: Colors.white,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Today, I work at ',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                      TextSpan(
                                        text: 'Shell',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey),
                                      ),
                                      TextSpan(
                                        text:
                                            ' as a Software Engineer, contributing to innovative solutions in the energy sector. My work spans application development, cloud integration, and data analytics—leveraging technologies like AWS, Azure, and ServiceNow to create scalable, secure, and impactful solutions.',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),

                                // Story Section 5
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      fontSize: 16,
                                      height: 1.5,
                                      color: Colors.white,
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Looking ahead, I’m committed to growing my expertise in advanced computing, exploring the intersection of ',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                      TextSpan(
                                        text: 'quantum computing and AI',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey),
                                      ),
                                      TextSpan(
                                        text:
                                            ', while continuing to deliver high-impact solutions in my professional role. To me, every project is another step toward turning ambitious ideas into reality.',
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.P1,
                                            fontSize: kDefaultFontSize),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 25),
                              ],

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBox(
                    borderRadius: containerStyle.borderRadiusRadup,
                    margin: containerStyle.margin,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(31, 0, 0, 0),
                        borderRadius: containerStyle.borderRadiusRadup,
                      ),
                      padding: containerStyle.paddingNew,
                      // margin: containerStyle.margin,
                      width: deviceWidth * containerStyle.widthAboutme,
                      height: 60,
                      child: Text(
                        "My Coding Journey",
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.HeadingB),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 68, 68),
                          // Color(0xff95008a),
                          Color.fromARGB(255, 113, 78, 255)
                        ],
                        // stops: [
                        //   0,
                        //   0.5,
                        //   1
                        // ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: containerStyle.borderRadiusBottom,
                    ),
                    margin: containerStyle.margin,
                    width: deviceWidth * containerStyle.widthAboutme,
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.grab,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      margin: containerStyle.margin,
                      width: deviceWidth * containerStyle.widthAboutme,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: containerStyle.borderRadius,
                        child: const RandomLocationMap(),
                      ),
                    ),
                    Padding(
                      padding: containerStyle.margin,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(130, 167, 167, 167),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        margin: containerStyle.margin,
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Row(
                          children: [
                            const Icon(color: Colors.red, Icons.place_rounded),
                            Text(
                              ' Bengaluru, India',
                              style: GoogleFonts.chakraPetch(
                                  textStyle: textStyles.edu_P_N,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: CustomBox(
                  margin: containerStyle.margin,
                  borderRadius: containerStyle.borderRadius,
                  child: Container(
                    decoration: BoxDecoration(
                      color: containerStyle.color,
                      borderRadius: containerStyle.borderRadius,
                    ),
                    // padding: containerStyle.padding,
                    width: deviceWidth * containerStyle.widthAboutme,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: containerStyle.paddingNewHeading,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                      color: textStyles.B.color,
                                      Icons.flare_rounded),
                                  Text(
                                    " My Persona",
                                    style: GoogleFonts.chakraPetch(
                                        textStyle: textStyles.HeadingB),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Know me as a person",
                                style: GoogleFonts.chakraPetch(
                                    textStyle: textStyles.P1),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Stack(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Positioned(
                                bottom: 100,
                                left: 200, // Adjusted left position
                                child: rotating_container(
                                  width: 169, // Adjusted width
                                  color: Color(0xFF4A90E2), // Tomato
                                  rotationZ: -4,
                                  text: "Curious Mind",
                                  emoji:
                                      "assets/emoji/Magnifier.png", // Magnifying Glass
                                ),
                              ),
                              Positioned(
                                bottom: 60,
                                left: 5, // Adjusted left position
                                child: rotating_container(
                                  width: 135, // Adjusted width
                                  color: Color(0xFFD4AC4B), // Sky Blue
                                  rotationZ: -15,
                                  text: "Bookworm",
                                  emoji: "", // Books
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 60, // Adjusted left position
                                child: rotating_container(
                                  width: 135, // Adjusted width
                                  color: Color(0xFF27AE60), // Dark Orange
                                  rotationZ: 2,
                                  text: "Traveler",
                                  emoji:
                                      "assets/emoji/Airplane.png", // Airplane
                                ),
                              ),
                              Positioned(
                                bottom: 160,
                                left: 180, // Adjusted left position
                                child: rotating_container(
                                  width: 130, // Adjusted width
                                  color: Color(0xFFC0392B), // Lawn Green
                                  rotationZ: 12,
                                  text: "Gym Rat",
                                  emoji: "assets/emoji/Gym.png", // Weightlifter
                                ),
                              ),
                              Positioned(
                                bottom: 120,
                                left: 10, // Adjusted left position
                                child: rotating_container(
                                  width: 190, // Adjusted width
                                  color: Color(0xFFF39C12), // Medium Purple
                                  rotationZ: -4,
                                  text: "Problem Solver",
                                  emoji: "assets/emoji/Brain.png", // Circle
                                ),
                              ),
                              Positioned(
                                bottom: 35,
                                left: 150, // Adjusted left position
                                child: rotating_container(
                                  width: 215, // Adjusted width
                                  color: Color(0xFF8E44AD), // Medium Purple
                                  rotationZ: 18,
                                  text: "Friendly Ambivert",
                                  emoji: "assets/emoji/Moon.png", // Circle
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
