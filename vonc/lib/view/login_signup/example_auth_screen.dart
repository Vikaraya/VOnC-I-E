import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pinput/pinput.dart';
import 'package:vonc/view/pages/vonc_main_screen.dart';


class ExampleAuthScreen extends StatefulWidget {
  const ExampleAuthScreen({super.key});

  @override
  State<ExampleAuthScreen> createState() => _ExampleAuthScreenState();
}

class _ExampleAuthScreenState extends State<ExampleAuthScreen> {

   // int _CrossAxisCount = 2;

 // double _aspectRatio = 1.5;

  //VeiwType _viewType = VeiwType.grid;

  final signInKey = GlobalKey<FormState>();
  final signUpKey = GlobalKey<FormState>();

  bool _SignInsubmit() {
    final isvalid = signInKey.currentState!.validate();
    if (isvalid) {
      signInKey.currentState?.save();
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PhoneVerification()));
      return true;
    }

    return false;
  }

  bool _SignUpsubmit() {
    final isvalid = signUpKey.currentState!.validate();
    if (isvalid) {
      signUpKey.currentState?.save();
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PhoneVerification()));
    }
    signUpKey.currentState!.save();
    return true;
  }

  bool _isPasswordVisible = false;
  bool _isLoginEnabled = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Blue Shape
            Positioned(
              top: 0,
              left: 0,
              // alignment: Alignment.topLeft,
              child: SizedBox(
                height: screenHeight * 0.2,
                child: Image.asset(
                  "assets/img/1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Center(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: screenHeight * 0.15,
                    child: Image.asset(
                      "assets/img/vonc_inovation_Icon-rb.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            //Green Shape
            Positioned(
              top: 0,
              right: 0,
              //alignment: Alignment.topRight,
              child: SizedBox(
                height: screenHeight * 0.115,
                child: Image.asset(
                  "assets/img/2-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Yellow Shape
            Positioned(
              bottom: 0,
              left: 0,
              //alignment: Alignment.bottomLeft,
              child: SizedBox(
                height: screenHeight * 0.2,
                child: Image.asset(
                  "assets/img/3-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // grey Shape
            Positioned(
              bottom: 0,
              right: 0,
              //alignment: Alignment.bottomRight,
              child: SizedBox(
                height: screenHeight * 0.2,
                child: Image.asset(
                  "assets/img/4-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),

            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.572,
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade800.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 65,
                          child: Center(
                            child: Image.asset(
                              "assets/img/V_O_n_C_Logo crop-min.png",
                            ),
                          ),
                        ),

                        // Text From Field
                        _isLoginEnabled
                            ? Form(
                                key: signInKey,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value!.isEmpty ||
                                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*|+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(value)) {
                                            return " Enter a valid email!";
                                          }
                                          return null;
                                        },
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade500,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade900),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          hintText: "Email",
                                          hintStyle: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          RegExp regex = RegExp(
                                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
                                          if (value!.isEmpty) {
                                            return 'Please enter password';
                                          } else {
                                            if (!regex.hasMatch(value)) {
                                              return 'Enter valid password';
                                            } else {
                                              return null;
                                            }
                                          }
                                        },
                                        obscureText: !_isPasswordVisible,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade500,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade900),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          hintText: "Password",
                                          hintStyle: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.key,
                                            color: Colors.white,
                                          ),
                                          suffixIcon: IconButton(
                                            icon: Icon(_isPasswordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                            color: Colors.white,
                                            onPressed: () {
                                              setState(() {
                                                _isPasswordVisible =
                                                    !_isPasswordVisible;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _isLoginEnabled = false;
                                            });
                                          },
                                          child: const Text(
                                            "Sign UP",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: const Text(
                                            "Forgot Password?",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueAccent,
                                        //minimumSize: Size(100, 25),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _SignInsubmit();
                                        });
                                      },
                                      child: const Text(
                                        "Next  >>",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Image.asset(
                                                  "assets/icons/google_logo.png")),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Image.asset(
                                                  "assets/icons/apple_logo.png")),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                                "assets/icons/facebook_logo-removebg-preview.png"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            // signup Form
                            : Form(
                                key: signUpKey,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value!.isEmpty ||
                                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*|+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(value)) {
                                            return " Enter a valid email!";
                                          }
                                          return null;
                                        },
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade500,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade900),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          hintText: "Email",
                                          hintStyle: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          RegExp regex = RegExp(
                                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
                                          if (value!.isEmpty) {
                                            return 'Please enter password';
                                          } else {
                                            if (!regex.hasMatch(value)) {
                                              return 'Enter valid password';
                                            } else {
                                              return null;
                                            }
                                          }
                                        },
                                        obscureText: !_isPasswordVisible,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade500,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade900),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          hintText: "Password",
                                          hintStyle: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.key,
                                            color: Colors.white,
                                          ),
                                          suffixIcon: IconButton(
                                            icon: Icon(_isPasswordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                            color: Colors.white,
                                            onPressed: () {
                                              setState(() {
                                                _isPasswordVisible =
                                                    !_isPasswordVisible;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          RegExp regex = RegExp(
                                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
                                          if (value!.isEmpty) {
                                            return 'Please enter password';
                                          } else {
                                            if (!regex.hasMatch(value)) {
                                              return ' password not same';
                                            } else {
                                              return null;
                                            }
                                          }
                                        },
                                        obscureText: !_isPasswordVisible,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade500,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade900),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          hintText: "Confirm Password",
                                          hintStyle: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.key,
                                            color: Colors.white,
                                          ),
                                          suffixIcon: IconButton(
                                            icon: Icon(_isPasswordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                            color: Colors.white,
                                            onPressed: () {
                                              setState(() {
                                                _isPasswordVisible =
                                                    !_isPasswordVisible;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueAccent,
                                        //minimumSize: Size(100, 25),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _SignUpsubmit();
                                        });
                                      },
                                      child: const Text(
                                        "Next  >>",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _isLoginEnabled = true;
                                        });
                                      },
                                      child: const Text(
                                        " Have account , Sign In",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    // Center(
                                    //   child: Container(
                                    //     height: 4,
                                    //     width: screenWidth * 0.265,
                                    //     decoration: BoxDecoration(
                                    //       color: Colors.white10,
                                    //       borderRadius:
                                    //           BorderRadius.circular(30),
                                    //     ),
                                    //   ),
                                    // ),
                                     Center(
                              child: ClipOval(
                                child: Image.asset(
                                    "assets/icons/vonc_io_main-removebg-preview.png"),
                              ),
                            ),
                            // sizedBoxHeight(10),
                            Container(
              height: 40,
              color: const Color(0xFF212325),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: const Text(
                      " Categories",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       if (_viewType == VeiwType.list) {
                  //         _CrossAxisCount = 2;
                  //         _aspectRatio = 1.5;
                  //         _viewType = VeiwType.grid;
                  //       } else {
                  //         _CrossAxisCount = 1;
                  //         _aspectRatio = 5;
                  //         _viewType = VeiwType.list;
                  //       }
                  //     });
                  //   },
                  //   icon: _viewType == VeiwType.grid
                  //       ? SizedBox(
                  //           width: 50,
                  //           height: 50,
                  //           child: Image.asset(
                  //               "assets/icons/cateogrie_icon-removebg-preview.png"),
                  //         )
                  //       : Icon(Icons.view_list_outlined, color: Colors.white),
                  // ),
                ],
              ),
            ),
            //sizedBoxHeight(10),
                             Container(
              height: 200,
              margin: const EdgeInsets.all(10),
              // child: _viewType == VeiwType.grid
              //     ? GridView.builder(
              //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //             crossAxisCount: _CrossAxisCount,
              //             childAspectRatio: _aspectRatio),
              //         itemCount: AppData.CategoriesStyleImages.length,
              //         itemBuilder: (context, index) {
              //           return Stack(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: InkWell(
              //                   onTap: () {
              //                     Navigator.push(
              //                       context,
              //                       MaterialPageRoute(builder: (context) {
              //                         switch (index) {
              //                           case 0:
              //                             return const FoodPage();
              //                           case 1:
              //                             return const LivingEssentials();
              //                           case 2:
              //                             return const LivingGenerals();
              //                           case 3:
              //                             return const Cervices();
              //                           case 4:
              //                             return const VoncIo();
              //                           default:
              //                             return const HomeScreen();
              //                         }
              //                       }),
              //                     );
              //                   },
              //                   child: Center(
              //                     child: Container(
              //                       height: 200,
              //                       decoration: BoxDecoration(
              //                         image: DecorationImage(
              //                           image: AssetImage(AppData
              //                               .CategoriesStyleImages[index]),
              //                           fit: BoxFit.fill,
              //                         ),
              //                         borderRadius: BorderRadius.circular(30),
              //                         border: Border.all(
              //                           width: 3,
              //                           color: AppData.borderColors[index],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               Align(
              //                 alignment: Alignment.bottomCenter,
              //                 child: Padding(
              //                   padding: const EdgeInsets.only(bottom: 15.0),
              //                   child: Text(
              //                     AppData.CategoriesText[index],
              //                     style: TextStyle(
              //                         color: Colors.white, fontSize: 12),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           );
              //         },
              //       )
              //     : ListView.builder(
              //         itemCount: AppData.CategoriesStyleImages.length,
              //         itemBuilder: (context, index) {
              //           return Stack(
              //             children: [
              //               Stack(
              //                 children: [
              //                   InkWell(
              //                     onTap: () {
              //                       Navigator.push(
              //                         context,
              //                         MaterialPageRoute(builder: (context) {
              //                           switch (index) {
              //                             case 0:
              //                               return const FoodPage();
              //                             case 1:
              //                               return const LivingEssentials();
              //                             case 2:
              //                               return const LivingGenerals();
              //                             case 3:
              //                               return const Cervices();
              //                             case 4:
              //                               return const VoncIo();
              //                             default:
              //                               return const HomeScreen();
              //                           }
              //                         }),
              //                       );
              //                     },
              //                     child: Container(
              //                       height: 180,
              //                       margin: EdgeInsets.symmetric(vertical: 10),
              //                       decoration: BoxDecoration(
              //                         image: DecorationImage(
              //                           image: AssetImage(AppData
              //                               .CategoriesStyleImages[index]),
              //                           fit: BoxFit.fill,
              //                         ),
              //                         borderRadius: BorderRadius.circular(30),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Positioned(
              //                 bottom: 10,
              //                 width: MediaQuery.sizeOf(context).width,
              //                 child: Container(
              //                   color: Colors.black54,
              //                   padding: EdgeInsets.symmetric(
              //                       horizontal: 8, vertical: 4),
              //                   child: Center(
              //                     child: Align(
              //                       alignment: Alignment.bottomCenter,
              //                       child: Text(
              //                         AppData.CategoriesText[index],
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 15),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           );
              //         },
              //       ),
                 //     GridView.builder(
                    //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //           crossAxisCount: _CrossAxisCount,
                    //           childAspectRatio: _aspectRatio),
                    //       itemCount: AppData.CategoriesStyleImages.length,
                    //       itemBuilder: (context, index) {
                    //         return Stack(
                    //           children: [
                    //             Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: InkWell(
                    //                 onTap: () {
                    //                   Navigator.push(
                    //                     context,
                    //                     MaterialPageRoute(builder: (context) {
                    //                       switch (index) {
                    //                         case 0:
                    //                           return const FoodPage();
                    //                         case 1:
                    //                           return const LivingEssentials();
                    //                         case 2:
                    //                           return const LivingGenerals();
                    //                         case 3:
                    //                           return const Cervices();
                    //                         case 4:
                    //                           return const VoncIo();
                    //                         default:
                    //                           return const HomeScreen();
                    //                       }
                    //                     }),
                    //                   );
                    //                 },
                    //                 child: Center(
                    //                   child: Container(
                    //                     height: 180,
                    //                     decoration: BoxDecoration(
                    //                       image: DecorationImage(
                    //                         image: AssetImage(
                    //                             AppData.CategoriesStyleImages[index]),
                    //                         fit: BoxFit.fill,
                    //                       ),
                    //                       borderRadius: BorderRadius.circular(30),
                    //                       border: Border.all(
                    //                         width: 4,
                    //                         color: AppData.borderColors[index],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //             Align(
                    //               alignment: Alignment.bottomCenter,
                    //               child: Padding(
                    //                 padding: const EdgeInsets.only(bottom: 15.0),
                    //                 child: Text(
                    //                   AppData.CategoriesText[index],
                    //                   style: TextStyle(
                    //                       color: Colors.white, fontSize: 12),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         );
                    //       },
                    //     ),
                    //     Align(
                    //       alignment: Alignment.center,
                    //       child: Image.asset(
                    //         "assets/icons/vonc_io_main-removebg-preview.png", // Replace with your image asset
                    //         width: 100,
                    //         height: 100,
                    //       ),
                    //     ),
                    //   ],
                    // ),
            ),
 Container(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.lightBlueAccent),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/food_3674384.png"),
                      const Text("Food"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: DropdownButton(
                                underline: Container(),
                                dropdownColor: Colors.white,
                                items: const [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text("1"),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text("2"),
                                  ),
                                  DropdownMenuItem(
                                    value: "3",
                                    child: Text("3"),
                                  )
                                ],
                                onChanged: (value) {})),
                      ),
                    ]),
              ),
              const Spacer(),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.greenAccent.shade700),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/shopping-cart_476211.png"),
                      const Text("Living_Essentials"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: DropdownButton(
                                underline: Container(),
                                dropdownColor: Colors.white,
                                items: const [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text("1"),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text("2"),
                                  ),
                                  DropdownMenuItem(
                                    value: "3",
                                    child: Text("3"),
                                  )
                                ],
                                onChanged: (value) {})),
                      ),
                    ]),
              ),
              Container(
                height: 100,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.yellowAccent.shade400),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/woman.png"),
                      const Text("Living_Generals"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: DropdownButton(
                                underline: Container(),
                                dropdownColor: Colors.white,
                                items: const [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text("1"),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text("2"),
                                  ),
                                  DropdownMenuItem(
                                    value: "3",
                                    child: Text("3"),
                                  )
                                ],
                                onChanged: (value) {})),
                      ),
                    ]),
              ),
              Container(
                height: 50,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.grey.shade500),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/support-services_10723986.png"),
                      const Text("Cervices"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: DropdownButton(
                                icon: const Icon(Icons.arrow_drop_down),
                                underline: Container(),
                                dropdownColor: Colors.white,
                                items: const [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text("1"),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text("2"),
                                  ),
                                  DropdownMenuItem(
                                    value: "3",
                                    child: Text("3"),
                                  )
                                ],
                                onChanged: (value) {})),
                      ),
                    ]),
              ),
            ],
          ),
        )),
                                  ],
                                ),
                              )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  final phoneKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            // alignment: Alignment.topLeft,
            child: SizedBox(
              height: screenHeight * 0.2,
              child: Image.asset(
                "assets/img/1.png",
                fit: BoxFit.cover,
              ),
            ),
          ),

          //Green Shape
          Positioned(
            top: 0,
            right: 0,
            //alignment: Alignment.topRight,
            child: SizedBox(
              height: screenHeight * 0.115,
              child: Image.asset(
                "assets/img/2-removebg-preview.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Yellow Shape
          Positioned(
            bottom: 0,
            left: 0,
            //alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: screenHeight * 0.2,
              child: Image.asset(
                "assets/img/3-removebg-preview.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          // grey Shape
          Positioned(
            bottom: 0,
            right: 0,
            //alignment: Alignment.bottomRight,
            child: SizedBox(
              height: screenHeight * 0.2,
              child: Image.asset(
                "assets/img/4-removebg-preview.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: screenWidth * 0.8,
                height: screenHeight * 0.6,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade800.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.transparent.withOpacity(0.5),
                        radius: 65,
                        child: Center(
                          child: Image.asset(
                            "assets/img/V_O_n_C_Logo crop-min.png",
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: SizedBox(
                          width: screenWidth * 0.8,
                          child: Form(
                            key: phoneKey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: IntlPhoneField(
                                    initialCountryCode: 'IN',
                                    controller: phoneController,
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) {
                                      phoneKey.currentState!.validate();
                                    },
                                    validator: (value) {
                                      if (phoneController.text.length != 10) {
                                        return 'Plaese Enter Valid Phone Number';
                                      } else if (!RegExp(r'^[0-9]+$')
                                          .hasMatch(phoneController.text)) {
                                        return 'Please Enter Valid Phone Number';
                                      }
                                      return null;
                                    },
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey.shade500,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade900),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                      hintText: "Phone Number",
                                      hintStyle: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueAccent,
                                    ),
                                    onPressed: () {
                                      if (phoneKey.currentState!.validate()) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const OtpScreen(
                                                    phoneNumber: '',
                                                    sentOtp: '',
                                                  )),
                                        );
                                      } else {
                                        return;
                                      }
                                    },
                                    child: const Text(
                                      "Verify Phone Number",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Center(
                                  child: Text(
                                    "        Or \n Login with",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      child: IconButton(
                                          onPressed: () {},
                                          //siginIn,
                                          icon: Image.asset(
                                              "assets/icons/google_logo.png")),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                              "assets/icons/apple_logo.png")),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                            "assets/icons/facebook_logo-removebg-preview.png"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class OtpScreen extends StatefulWidget {
  final String phoneNumber;
  final String sentOtp;
  const OtpScreen(
      {super.key, required this.phoneNumber, required this.sentOtp});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final otpController = TextEditingController();
  final OtpKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 42,
      textStyle: const TextStyle(
        fontSize: 24,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              // alignment: Alignment.topLeft,
              child: SizedBox(
                height: screenHeight * 0.2,
                child: Image.asset(
                  "assets/img/1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            /* Center(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: screenHeight * 0.15,
                  child: Image.asset(
                    "assets/img/vonc_inovation_Icon-rb.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),*/
            //Green Shape
            Positioned(
              top: 0,
              right: 0,
              //alignment: Alignment.topRight,
              child: SizedBox(
                height: screenHeight * 0.115,
                child: Image.asset(
                  "assets/img/2-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Yellow Shape
            Positioned(
              bottom: 0,
              left: 0,
              //alignment: Alignment.bottomLeft,
              child: SizedBox(
                height: screenHeight * 0.2,
                child: Image.asset(
                  "assets/img/3-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // grey Shape
            Positioned(
              bottom: 0,
              right: 0,
              //alignment: Alignment.bottomRight,
              child: SizedBox(
                height: screenHeight * 0.2,
                child: Image.asset(
                  "assets/img/4-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.572,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade800.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.transparent.withOpacity(0.5),
                        radius: 65,
                        child: Center(
                          child: Image.asset(
                            "assets/img/V_O_n_C_Logo crop-min.png",
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          child: const Text(
                            "   Verification Code",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Form(
                          key: OtpKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 2,
                              ),
                              const Center(
                                child: Text(
                                  "Verification Code send to Registered mobile number",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // Center(
                              //   child: Text(
                              //     _obscurePhoneNumber(widget.phoneNumber),
                              //     style: const TextStyle(
                              //       color: Colors.white70,
                              //       fontSize: 15,
                              //       fontWeight: FontWeight.bold,
                              //     ),
                              //   ),
                              // ),
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PhoneVerification(),
                                        ));
                                  },
                                  child: const Text(
                                    "Change Phone Number ?",
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Pinput(
                                  // controller: otpController,
                                  obscureText: true,
                                  length: 6,
                                  defaultPinTheme: defaultPinTheme,
                                  focusedPinTheme: defaultPinTheme.copyWith(
                                    decoration:
                                        defaultPinTheme.decoration!.copyWith(
                                      border: Border.all(color: Colors.white24),
                                    ),
                                  ),
                                  submittedPinTheme: defaultPinTheme.copyWith(
                                    decoration:
                                        defaultPinTheme.decoration!.copyWith(
                                      border: Border.all(color: Colors.white24),
                                    ),
                                  ),
                                  errorPinTheme: defaultPinTheme.copyWith(
                                    decoration:
                                        defaultPinTheme.decoration!.copyWith(
                                      border: Border.all(color: Colors.red),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter OTP';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Center(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 40,
                                    ),
                                    // if (isTimervisible)
                                    // Center(
                                    //   child: Text(
                                    //     // " $remainingTime seconds",
                                    //     style: const TextStyle(
                                    //       color: Colors.white70,
                                    //     ),
                                    //   ),
                                    // ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    // InkWell(
                                    //     onTap: (){}
                                    //         // remainingTime == 0 && !isResending
                                    //         //     ? resendOtp
                                    //         //     : null,
                                    //     child: Center(
                                    //         child: Text(
                                    //       isResending
                                    //           ? "Resendig ..."
                                    //           : "Resend Otp",
                                    //       style: const TextStyle(
                                    //         color: Colors.indigo,
                                    //         fontWeight: FontWeight.bold,
                                    //       ),
                                    //     ))),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent,
                                    //minimumSize: Size(100, 25),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const VoncMainScreen()),
                                    );
                                  },
                                  // onPressed: verifyOrResendOtp,
                                  child: const Text(
                                    "verify Otp",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 20,
                              // ),
                              // if (isTimervisible)
                              //   Text(
                              //       "Resend available in : $remainingTime seconds"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
