import 'package:assignment/core/constants/allExport.dart';

class CustomAppButton extends StatelessWidget {
  final VoidCallback onTap;
  final List<Color>? gradientColors;
  final Color? textColor;
  final bool isOutline;
  final double? fontSize;
  final double? topLeft;
  final double? bottomLeft;
  final TextStyle? style;
  final double? bottomRight;
  final double? topRight;
  final String? buttonText;
  final double? buttonTextSize;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? iconButton;
  final double? width;
  final double? height;
  final double? size;
  final double borderWidth;
  final Color? outlineColor;
  final bool hasShadow;

  const CustomAppButton({
    super.key,
    required this.onTap,
    this.gradientColors,
    this.fontSize,
    this.buttonTextSize,
    required this.buttonText,
    this.isOutline = false,
    this.textColor = AppColors.kLightGrey,
    this.topRight = 8.0,
    this.topLeft = 8.0,
    this.bottomLeft = 8.0,
    this.bottomRight = 8.0,
    this.prefixIcon,
    this.suffixIcon,
    this.style,
    this.width,
    this.height = 48.0,
    this.size = 18.0,
    this.iconButton = false,
    this.hasShadow = true,
    this.borderWidth = 1.0,
    this.outlineColor,
  });

  /// Todo  ✅ Factory constructor to create a button with a default gradient

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isOutline ? AppColors.kWhite : AppColors.kLightGrey,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(topRight!),
            topLeft: Radius.circular(topLeft!),
            bottomLeft: Radius.circular(bottomLeft!),
            bottomRight: Radius.circular(bottomRight!),
          ),
          border: isOutline
              ? Border.all(
                  color: outlineColor ?? AppColors.kLightGrey,
                  width: borderWidth,
                )
              : null,
          boxShadow: hasShadow
              ? [
                  BoxShadow(
                    color: AppColors.kLightGrey.withOpacity(0.6),
                    blurRadius: 2.0,
                    offset: const Offset(0, 1),
                  )
                ]
              : null,
        ),
        width: width ?? double.infinity,
        height: height ?? 48.0,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (prefixIcon != null) ...[
                prefixIcon!,
                const SizedBox(width: 8.0),
              ],
              Flexible(
                child: TextWidget(
                  overflow: TextOverflow.ellipsis,
                  fontSize: buttonTextSize ?? 16.0,
                  // Todo ✅ Fix: Use buttonTextSize
                  text: buttonText ?? "",
                  softWrap: false,
                  // Todo Prevents unexpected line breaks
                  color: textColor ?? AppColors.kWhite,
                  fontWeight: FontWeight.w600,
                  style: style,
                  // Todo ✅ Fix: Use custom style if provided
                ),
              ),
              if (suffixIcon != null) ...[
                const SizedBox(width: 8.0),
                suffixIcon!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}
