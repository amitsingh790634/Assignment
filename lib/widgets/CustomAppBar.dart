import 'package:assignment/core/constants/allExport.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color backgroundColor;
  final Color? titleColor;
  final bool centerTitle;
  final double? fontSize;

  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
    this.titleColor = AppColors.kBlueColor,
    this.actions,
    this.fontSize = 18.0,
    this.backgroundColor = AppColors.kWhite,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextWidget(
        fontFamily: GoogleFonts.roboto.toString(),
        text: title,
        color: titleColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      leading: leading,
      actions: actions,
      surfaceTintColor: AppColors.kWhite,
      shadowColor: AppColors.kLightGrey,
      elevation: 2.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
