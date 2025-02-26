import 'package:assignment/core/constants/allExport.dart';

// Todo Current timestamp for back button press handling
DateTime? currentBackPressTime;

/// Todo Utility to close the keyboard if open
Future<void> closeKeyBoard({required BuildContext context}) async {
  FocusScope.of(context).unfocus();
}

/// Todo Get device height
double deviceHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

/// Todo Get device width
double deviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

/// Todo Create rich text with two parts and an action on tap
Widget richText({
  required BuildContext context,
  required String firstText,
  required String secondText,
  TextStyle? firstStyle,
  TextStyle? secondStyle,
  required Function() onTap,
}) {
  return Text.rich(
    textAlign: TextAlign.center,
    TextSpan(
      style: firstStyle,
      children: [
        TextSpan(text: firstText),
        const WidgetSpan(child: SizedBox(width: 3)), // Add spacing
        TextSpan(
          text: secondText,
          style: secondStyle,
          recognizer: TapGestureRecognizer()..onTap = onTap,
        ),
      ],
    ),
  );
}

/// Todo Add a width gap
SizedBox kWidthGap(double width) => SizedBox(width: width);

/// Todo Add a height gap
SizedBox kHeightGap(double height) => SizedBox(height: height);

/// Todo Handle back button press with double-tap to exit
/*Future<bool> onWillPop(BuildContext context) async {
  DateTime now = DateTime.now();

  if (currentBackPressTime == null ||
      now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
    currentBackPressTime = now;
    showSnackBar(
      context: context,
      message: AppStrings.pleaseClickBack,
      isSuccess: true,
    );
    return false;
  }
  return true;
}*/
