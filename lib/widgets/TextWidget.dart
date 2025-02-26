import 'package:assignment/core/constants/allExport.dart';

class TextWidget extends StatelessWidget {
  final dynamic text;
  final TextAlign? textAlign;
  final Color? color;
  final Color? decorationColor;
  final String? fontFamily;
  final double? fontSize;
  final double? decorationThickness;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  final int? maxLines;
  final double? height;
  final double? wordSpacing;
  final double? letterSpacing;
  final List<Shadow>? shadows;
  final TextStyle? style;
  final bool? softWrap;

  const TextWidget({
    super.key,
    required this.text,
    this.textAlign,
    this.style,
    this.color,
    this.fontFamily,
    this.fontSize,
    this.overflow,
    this.fontWeight,
    this.decoration,
    this.maxLines,
    this.height,
    this.wordSpacing,
    this.letterSpacing,
    this.decorationColor,
    this.decorationThickness,
    this.shadows,
    this.softWrap,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double responsiveFontSize = (fontSize ?? 14) * (screenWidth / 375);

    return Text(
      text,
      textAlign: textAlign,
      softWrap: softWrap,
      maxLines: maxLines,
      style: GoogleFonts.notoSans(
        textStyle: TextStyle(
          color: color ?? AppColors.kLightBlack,
          height: height,
          decoration: decoration,
          fontSize: responsiveFontSize,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          fontWeight: fontWeight,
          decorationColor: decorationColor,
          decorationThickness: decorationThickness,
          overflow: overflow,
          shadows: shadows,
        ),
      ),
    );
  }
}
