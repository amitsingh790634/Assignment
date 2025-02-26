import '../core/constants/allExport.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.kLightGrey,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // LOGO Text
          const TextWidget(
              text: "LOGO Inc.",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          kHeightGap(10),

          // Navigation Links
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _footerLink("회사 소개"),
              _divider(),
              _footerLink("인재 채용"),
              _divider(),
              _footerLink("기술 블로그"),
              _divider(),
              _footerLink("리뷰 저작권"),
            ],
          ),
          kHeightGap(15),

          // Email and Language Selector
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.chevron_right, color: Colors.grey[700], size: 18),
                  const SizedBox(width: 5),
                  TextWidget(
                    text: "review@logo.com",
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ],
              ),
              DropdownButton<String>(
                value: "KOR",
                onChanged: (String? newValue) {},
                items: ["KOR", "ENG"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: TextWidget(
                        text: value, fontSize: 14, color: Colors.grey[700]),
                  );
                }).toList(),
              ),
            ],
          ),

          Divider(height: 20, color: Colors.grey[300]),

          // Copyright Text
          TextWidget(
            text: "@2022-2022 LOGO Lab, Inc. (주)아무개 서울시 강남구",
            fontSize: 12,
            color: Colors.grey[500],
          ),
          kHeightGap(40),
        ],
      ),
    );
  }

  // Helper method for footer links
  Widget _footerLink(String text) {
    return TextWidget(text: text, fontSize: 14, color: Colors.grey[600]);
  }

  // Divider between links
  Widget _divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextWidget(text: "|", color: Colors.grey[400]),
    );
  }
}
