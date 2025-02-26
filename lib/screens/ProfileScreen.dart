import 'package:assignment/core/constants/allExport.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      // backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text("랭킹 1위",
                style: TextStyle(fontSize: 12, color: Colors.grey[600])),
            Text("베스트 리뷰어",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Section
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/cat1.png'),
                  ),
                  SizedBox(height: 10),
                  Text("Name01",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.emoji_events, color: Colors.amber, size: 18),
                      SizedBox(width: 5),
                      Text("골드",
                          style: TextStyle(fontSize: 14, color: Colors.amber)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 30),
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
            SizedBox(height: 20),

            // Reviews Section
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("작성한 리뷰 총 35개",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("최신순",
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[600])),
                      Icon(Icons.arrow_drop_down, color: Colors.grey[600]),
                    ],
                  ),
                ],
              ),
            ),

            Divider(height: 1, color: Colors.grey[300]),

            // Review Card
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/ryzen.png", width: 60, height: 60),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("AMD 라이젠 5 5600X 버미어",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Text("정품 멀티팩",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[600])),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                Icon(Icons.star_half,
                                    color: Colors.amber, size: 16),
                                SizedBox(width: 5),
                                Text("4.07",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // User Review
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/cat1.png"),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name01",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 14),
                              Icon(Icons.star, color: Colors.amber, size: 14),
                              Icon(Icons.star, color: Colors.amber, size: 14),
                              Icon(Icons.star, color: Colors.amber, size: 14),
                              Icon(Icons.star_border,
                                  color: Colors.amber, size: 14),
                              SizedBox(width: 5),
                              Text("2022.12.09",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey[600])),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌까지는 아닙니다.",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 10),

                  // Review Images
                  Row(
                    children: [
                      Expanded(
                          child: Image.asset("assets/review1.png", height: 70)),
                      SizedBox(width: 5),
                      Expanded(
                          child: Image.asset("assets/review2.png", height: 70)),
                      SizedBox(width: 5),
                      Expanded(
                          child: Image.asset("assets/review3.png", height: 70)),
                      SizedBox(width: 5),
                      Expanded(
                          child: Image.asset("assets/review4.png", height: 70)),
                    ],
                  ),
                ],
              ),
            ),

            Divider(height: 1, color: Colors.grey[300]),

            // Comment Input Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.chat_bubble_outline, color: Colors.grey),
                  SizedBox(width: 10),
                  Text("댓글 달기...", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
