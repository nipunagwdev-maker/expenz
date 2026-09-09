import 'package:expense_master_proj_07/constants/colors/colors.dart';
import 'package:expense_master_proj_07/widget/custome_buttton.dart';
import 'package:flutter/material.dart';
import 'package:expense_master_proj_07/data/onboarding_data.dart';
import 'package:expense_master_proj_07/screens/onboarding/front_page.dart';
import 'package:expense_master_proj_07/screens/onboarding/shared_onboarding_screens.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //this  is the  section that allows you to swipe side by side  to change the screens
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  children: [
                    FrontPage(),

                    SharedOnboardingScreens(
                      title: OnboardingData.onBoardingList[0].title,
                      imagePath: OnboardingData.onBoardingList[0].imagePath,
                      description:
                          OnboardingData.onBoardingList[0].imageDescriptoin,
                    ),

                    SharedOnboardingScreens(
                      title: OnboardingData.onBoardingList[1].title,
                      imagePath: OnboardingData.onBoardingList[1].imagePath,
                      description:
                          OnboardingData.onBoardingList[1].imageDescriptoin,
                    ),

                    SharedOnboardingScreens(
                      title: OnboardingData.onBoardingList[2].title,
                      imagePath: OnboardingData.onBoardingList[2].imagePath,
                      description:
                          OnboardingData.onBoardingList[2].imageDescriptoin,
                    ),
                  ],
                ),

                //page dot indicatiors making here
                Container(
                  alignment: Alignment(0, 0.6),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: WormEffect(
                      dotColor: kLightGrey,
                      activeDotColor: kMainColor,
                    ),
                  ),
                ),

                //navigation button  implementing
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: GestureDetector(
                      onTap: () {
                        _controller.animateToPage(
                          _controller.page!.toInt() + 1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: CustomeButtton(
                        buttonName: "Next",
                        buttonColor: kMainColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
