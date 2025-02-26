import 'package:assignment/core/constants/allExport.dart';
import 'package:assignment/screens/BottomNavBarScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    screenCalling();
    super.initState();
  }

  screenCalling() {
    Future.delayed(const Duration(seconds: 3), () async {
      await NavigationService.pushAndRemoveUntil(const BottomNavBarScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextWidget(
              text: "Welcome to app",
              fontSize: 24,
            ),
            kHeightGap(30),
            const CircularProgressIndicator(
              color: AppColors.kLightBlack,
            ),
          ],
        ),
      ),
    );
  }
}
