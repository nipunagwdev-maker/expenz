import 'package:expense_master_proj_07/models/onboarding_model.dart';

class OnboardingData {
  static final List<OnboardingModel> onBoardingList = [
    //page one
    OnboardingModel(
      title: "Gain total control \nof your money",
      imagePath: "assets/images/onboard_1.png",
      imageDescriptoin:
          "Become your own money manager\n and make every cent count",
    ),
    //page two
    OnboardingModel(
      title: "Know where your \nmoney goes",
      imagePath: "assets/images/onboard_3.png",
      imageDescriptoin:
          "Track your transaction easily\n with catogories and financial report",
    ),
    //page three
    OnboardingModel(
      title: "Planning ahead",
      imagePath: "assets/images/onboard_2.png",
      imageDescriptoin:
          "Setup your budget for each catagory \nso you in control",
    ),
  ];
}
