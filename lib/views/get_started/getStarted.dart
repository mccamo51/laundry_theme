// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:theme_app/theme/theme.dart';
import 'package:theme_app/widgets/getstartedWidgets.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key});

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/top_asset.png',
                    scale: size.height > 700 ? 2 : 2.3,
                  ),
                  RotationTransition(
                    turns: const AlwaysStoppedAnimation(15 / 10),
                    child: Image.asset(
                      'assets/top_asset.png',
                      scale: size.height > 700 ? 2 : 2.3,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Sign in",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: LaundryColors.black,
                        ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const LoginTextField(
                    hint: 'Email ID',
                    controller: null,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const LoginTextField(
                    hint: 'Password',
                    controller: null,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                        color: LaundryColors.primaryColor)))),
                        onPressed: () {},
                        child: const Text("LOGIN")),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(color: LaundryColors.grey),
                          children: [
                            TextSpan(
                                text: "Sign up",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: LaundryColors.primaryColor,
                                ))
                          ])),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Or sign in with",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: LaundryColors.primaryColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
