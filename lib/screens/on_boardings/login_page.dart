import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:scribe/widgets/buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login_bg.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const Spacer(),
              // Center(
              //   child: SvgPicture.asset(
              //     'assets/logos/logo_svg (1).svg',
              //     semanticsLabel: 'Logo',
              //     width: 100,
              //   ),
              // ),
              const Spacer(),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Welcome to Scribe!',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.greenAccent[600],
                            fontWeight: FontWeight.w600,
                            foreground: Paint()
                              ..style = PaintingStyle.fill
                              ..strokeCap = StrokeCap.round
                              ..strokeWidth = 2
                              ..color = Colors.greenAccent,
                          ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Please sign in to continue',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              signInWithGoogleButton(onPressed: () {}),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
