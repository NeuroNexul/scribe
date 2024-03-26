import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scribe/screens/on_boardings/first_page.dart';
import 'package:scribe/screens/on_boardings/login_page.dart';
import 'package:scribe/widgets/change_system_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  // Current page controller
  final PageController _pageController = PageController();

  // Keep track of the current page
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    changeSysytemColor();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: const [
              OnBoarding1(),
              OnBoarding1(),
              OnBoarding1(),
            ],
          ),

          // Page indicator
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: _currentPage != 2,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: GestureDetector(
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                    onTap: () {
                      // Push to login page
                      Navigator.push(context, _loginPageRouteBuilder());
                    },
                  ),
                ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: WormEffect(
                      radius: 8,
                      dotWidth: 8,
                      dotHeight: 8,
                      activeDotColor: Colors.white,
                      dotColor: (Colors.grey[400])!),
                ),
                GestureDetector(
                  child: _currentPage == 2
                      ? Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.done_rounded,
                            color: Colors.black,
                            weight: 10,
                            size: 30,
                          ),
                        )
                      : Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            weight: 10,
                          ),
                        ),
                  onTap: () {
                    _currentPage != 2
                        ? _pageController.nextPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeIn,
                          )
                        :
                        // Push to login page
                        Navigator.push(context, _loginPageRouteBuilder());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Route _loginPageRouteBuilder() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      return const LoginPage();
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 0.30);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return FadeTransition(
        opacity: animation.drive(CurveTween(curve: Curves.easeInOut)),
        child: SlideTransition(
          position: offsetAnimation,
          child: child,
        ),
      );
    },
    transitionDuration: const Duration(milliseconds: 250),
  );
}
