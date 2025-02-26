import 'package:assignment/core/constants/allExport.dart';
import 'package:assignment/screens/FooterScreen.dart';
import 'package:assignment/screens/ProfileScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(
        centerTitle: false,
        fontSize: 24,
        title: AppStrings.appLogo,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomPadding(
              // padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.transparent, width: 2),
                      gradient: const LinearGradient(
                        colors: [
                          AppColors.kLightBlue,
                          AppColors.kDarkBlue,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.transparent, width: 2),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextFormField(
                        // controller: controller,
                        // onChanged: onChanged,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: AppStrings.kSearch,
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 10),
                          suffixIcon: GestureDetector(
                            // onTap: onSearch,
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Icon(Icons.search, color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomCarouselSlider(
              dotSize: 8,
              fit: BoxFit.cover,
              images: homeBannerList,
              width: double.infinity,
            ),
            kHeightGap(20),
            const ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: TextWidget(
                text: "리뷰️  랭킹⭐ top 3",
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
              title: TextWidget(
                text: "제일 핫한 리뷰를 만나보세요",
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Column(
              children: products.map((product) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.kLightBlack.withOpacity(.6),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              product["crownIcon"],
                              scale: 2,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 5),
                            Image.asset(
                              product["image"],
                              scale: 2.5,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                richText(
                                    context: context,
                                    firstStyle: GoogleFonts.notoSans(
                                      textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    secondStyle: GoogleFonts.notoSans(
                                      textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    firstText: "${product["brand"]} ",
                                    secondText: "${product["product"]}",
                                    onTap: () {}),
                                const SizedBox(height: 5),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("• ",
                                            style: TextStyle(fontSize: 14)),
                                        Expanded(
                                          child: Text(
                                            "화면을 이동할 수 있고 전환도 편리하다...",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black87),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("• ",
                                            style: TextStyle(fontSize: 14)),
                                        Expanded(
                                          child: Text(
                                            "스탠바이미는 사랑입니다!",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black87),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(Icons.star,
                                    color: Colors.amber, size: 16),
                                const SizedBox(width: 5),
                                Text(
                                    "${product["rating"]} (${product["reviews"]})",
                                    style: const TextStyle(fontSize: 12)),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    product["category"],
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            kHeightGap(20),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: AppColors.kLightGrey),
                                  child: const Center(
                                    child: TextWidget(
                                      text: "LG전자",
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                kWidthGap(10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: AppColors.kLightGrey),
                                  child: const Center(
                                    child: TextWidget(
                                      text: "편리성",
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            Container(
              color: AppColors.kLightGrey,
              height: 20,
            ),
            kHeightGap(20),
            const ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: TextWidget(
                text: "베스트 리뷰어 🏆 Top10",
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
              title: TextWidget(
                text: "골드 계급 사용자들이예요",
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: reviewers.length,
                itemBuilder: (context, index) {
                  final reviewer = reviewers[index];
                  return GestureDetector(
                    onTap: () {
                      NavigationService.push(ProfileScreen(
                        image: reviewer['image'],
                        name: reviewer['name'],
                      ));
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 12, left: 10, top: 20),
                      child: Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.topLeft,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: reviewer["isGold"]
                                      ? Border.all(
                                          color: Colors.amber, width: 3)
                                      : null,
                                  image: DecorationImage(
                                    image: AssetImage(reviewer["image"]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              if (reviewer["isGold"])
                                const Positioned(
                                  top: -15,
                                  left: -8,
                                  child: Icon(
                                    Icons.emoji_events,
                                    color: Colors.amber,
                                  ),
                                ),
                            ],
                          ),
                          kHeightGap(5),
                          TextWidget(
                            text: reviewer["name"],
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            kHeightGap(20),
            const FooterScreen(),
          ],
        ),
      ),
    );
  }
}
