import 'package:assignment/core/constants/allExport.dart';
import 'package:assignment/core/constants/appImages.dart';

class ProfileScreen extends StatefulWidget {
  final String? image;
  final String? name;
  const ProfileScreen({super.key, this.name, this.image});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              NavigationService.pop();
            },
            child: const Icon(Icons.arrow_back_outlined)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            TextWidget(text: "랭킹 1위", fontSize: 12, color: Colors.grey[600]),
            const TextWidget(
              text: "베스트 리뷰어",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Section
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.kWhite,
                    radius: 50,
                    backgroundImage: AssetImage("${widget.image}"),
                  ),
                  const SizedBox(height: 10),
                  Text("${widget.name}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.emoji_events, color: Colors.amber, size: 18),
                      SizedBox(width: 5),
                      Text("골드",
                          style: TextStyle(fontSize: 14, color: Colors.amber)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "조립컴 업체를 운영하며 리뷰를 작성합니다.",
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            kHeightGap(20),
            Container(
              color: AppColors.kLightGrey,
              height: 15,
            ),
            // Reviews Section

            CustomPadding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  richText(
                    firstStyle: GoogleFonts.notoSans(
                      textStyle: const TextStyle(
                        color: AppColors.kBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    secondStyle: GoogleFonts.notoSans(
                      textStyle: const TextStyle(
                        color: AppColors.kBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    context: context,
                    firstText: '작성한 리뷰',
                    secondText: '총 35개',
                    onTap: () {},
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.kLightBlack.withOpacity(.6),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        const TextWidget(text: "최신순"),
                        Icon(
                          color: AppColors.kLightBlack.withOpacity(.6),
                          Icons.arrow_drop_down,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Divider(height: 1, color: Colors.grey[300]),

            // Review Card
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.kLightBlack.withOpacity(.6),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          AppImages.kAmd,
                          scale: 3,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextWidget(
                              text: "AMD 라이젠 5 5600X 버미어",
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            TextWidget(
                              text: "정품 멀티팩",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                            ),
                            kHeightGap(5),
                            const Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                Icon(Icons.star_half,
                                    color: Colors.amber, size: 16),
                                SizedBox(width: 5),
                                TextWidget(
                                    text: "4.07",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  kHeightGap(20),

                  // User Review
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.kWhite,
                        backgroundImage: AssetImage(
                          widget.image.toString(),
                        ),
                      ),
                      kWidthGap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              fontSize: 14,
                              text: widget.name,
                              color: AppColors.kBlack,
                              fontWeight: FontWeight.w500),
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 14),
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 14),
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 14),
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 14),
                              const Icon(Icons.star_border,
                                  color: Colors.amber, size: 14),
                              kWidthGap(5),
                              TextWidget(
                                text: "2022.12.09",
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  const TextWidget(
                    text: "3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌까지는 아닙니다.",
                    fontSize: 14,
                  ),
                  const SizedBox(height: 10),

                  // Review Images
                  Row(
                    children: [
                      Expanded(child: Image.asset(AppImages.kR1, height: 70)),
                      const SizedBox(width: 5),
                      Expanded(child: Image.asset(AppImages.kR2, height: 70)),
                      const SizedBox(width: 5),
                      Expanded(child: Image.asset(AppImages.kR3, height: 70)),
                      const SizedBox(width: 5),
                    ],
                  ),
                ],
              ),
            ),

            Divider(height: 1, color: Colors.grey[300]),

            // Comment Input Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  const Icon(Icons.chat_outlined, color: Colors.grey),
                  kWidthGap(10),
                  TextWidget(
                    text: "댓글 달기...",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(.8),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
