import 'package:flutter/material.dart';

class VoncIoScreens extends StatefulWidget {
  const VoncIoScreens({super.key});

  @override
  State<VoncIoScreens> createState() => _VoncIoScreensState();
}

class _VoncIoScreensState extends State<VoncIoScreens> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/img/vonc_io/vr_main_logo_c.png', // Add a placeholder image
                    width: size.width * 0.2,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage(
                        'assets/img/vonc_io/planet_9661612.png',
                      ),
                      width: size.width * 0.15,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              // Page 1
              Stack(
                children: [
                  SizedBox(
                    height: 200,
                    child: Container(
                      width: size.width,
                      height: size.height * 0.3,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            //Colors.purple, Colors.blue],
                            Colors.black, Colors.deepPurple
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(children: [
                            TextSpan(
                              text:
                                  "Experience the future of immersive technology now with",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text: " ViE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ])),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          "assets/img/vonc_io/vr_with_human_and_robot-removebg-preview.png",
                          //'assets/img/vonc_io/vr-0.png',
                          height: size.height * 0.4, // Add a placeholder image
                          width: size.width * 0.65,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Page 2
              Stack(
                children: [
                  SizedBox(
                    height: 1550,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black, Colors.deepPurple],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "ABOUT US",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/img/vonc_io/vr-2.1.png',
                            width: size.width,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [Colors.deepPurple, Colors.black],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              "Virtual Shopping is a groundbreaking approach to online retail, merging the physical and digital worlds. With personalized avatars, AI-drivenrecommendations, and an immersive 3D shopping experience, it is set toredefine how customers interact with brands and make purchasingdecisions. This concept is not just a technological advancement but a leaptowards the future of retail.",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 16),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        const Text(
                          "ABOUT VR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'assets/img/vonc_io/vr-2.2.png',
                            width: size.width,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [Colors.deepPurple, Colors.black],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              "Virtual Reality (VR) is a computer-generated environment with scenes and objects that appear to be real, making the user feel they are immersed in their surroundings. This environment is perceived through a device known as a Virtual Reality headset or helmet.",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 16),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "ABOUT ViE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        Image.asset(
                          'assets/img/vonc_io/vr_main_logo_c.png',
                          height: size.height * 0.4, // Add a placeholder image
                          width: size.width * 0.4,
                        ),

                        const SizedBox(height: 2),
                        // Row(
                        //   children: [
                        //     Image.asset(
                        //       'assets/img/vonc_io/vr-0.png',
                        //       height:
                        //           size.height * 0.4, // Add a placeholder image
                        //       width: size.width * 0.4,
                        //     ),
                        //     const Text(
                        //       "&",
                        //       style: TextStyle(
                        //           color: Colors.white,
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: 28),
                        //     ),
                        //     Image.asset(
                        //       'assets/img/vonc_io/vr_main_logo_c.png',
                        //       height:
                        //           size.height * 0.4, // Add a placeholder image
                        //       width: size.width * 0.4,
                        //     ),
                        //   ],
                        // ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [Colors.deepPurple, Colors.black],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              "The fashion industry is undergoing a transformation with the integration of advanced technologies like Virtual Reality (VR). This project aims to enhance the online shopping experience by enabling users to visualize outfits on their virtual avatars. The innovation bridges the gap between physical and digital shopping, reducing size-related issues and enhancing customer satisfaction.",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
