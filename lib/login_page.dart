import 'package:chat_app_v2/utils/brand_color.dart';
import 'package:chat_app_v2/utils/spaces.dart';
import 'package:chat_app_v2/widgets/login_textfield.dart';
import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';

import 'chat_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final Uri _url = Uri.parse('https://owempe.eu');

  void loginUser(context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print('username = ' + userNameController.text);
      print('password = ' + passwordController.text);
      Navigator.pushReplacementNamed(
        context,
        '/chat',
        arguments: userNameController.text,
      );
      print('Login successful');
    } else {
      print('Login failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Let\'s sign you in!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                "Welcome back!\nYou've been missed!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
              Image.asset('assets/banner_image.png', height: 200),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    LoginTextField(
                      controller: userNameController,
                      hintText: "Enter your username",
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Please enter a username';
                        } else if (value != null &&
                            value.isNotEmpty &&
                            value.length < 5) {
                          return "Username must be at least 5 characters long";
                        }
                        return null;
                      },
                    ),
                    verticalSpacing(24),
                    LoginTextField(
                      controller: passwordController,
                      hintText: 'Type your password',
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                    verticalSpacing(24),
                    ElevatedButton(
                      onPressed: () {
                        loginUser(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: BrandColor.primaryColor,
                        //Colors.deepPurple
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        print('Navigated to browser');
                        if (!await launchUrl(_url)) {
                          throw Exception('Could not launch $_url');
                        }
                      },
                      child: Column(
                        children: [Text('Find us on'), Text('$_url')],
                      ),
                    ),
                    verticalSpacing(24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialMediaButton.linkedin(
                          color: Colors.blue,
                          url:
                              "https://www.linkedin.com/in/olwen-wempe-6171b4108/",
                        ),
                        SocialMediaButton.github(
                          url:
                              "https://https://github.com/OlwenWempe/Flutter-Chat-App",
                        ),
                        SocialMediaButton.instagram(
                          color: Colors.pink,
                          url: "https://www.instagram.com/",
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
    );
  }
}
