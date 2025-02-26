import 'package:assignment/core/constants/allExport.dart';
import 'package:assignment/core/constants/appImages.dart';

/// Todo Home Banner List

List<String> homeBannerList = [
  AppImages.kBanner1,
  AppImages.kBanner2,
  AppImages.kBanner3,
  AppImages.kBanner4,
];

/// Todo Product List Data
final List<Map<String, dynamic>> products = [
  {
    "position": 1,
    "crownIcon": AppImages.kCrown1,
    "crownColor": Colors.amber,
    "brand": "LG전자",
    "product": "스탠바이미 27ART10AKPL",
    "features": "화면을 이동할 수 있고 전환도 편리하다...\n스탠바이미는 사랑입니다!",
    "rating": 4.89,
    "reviews": 216,
    "category": "편리성",
    "image": AppImages.kProduct1
  },
  {
    "position": 2,
    "crownIcon": AppImages.kCrown2,
    "crownColor": Colors.grey,
    "brand": "LG전자",
    "product": "울트라HD 75UP8300KNA",
    "features": "화면 잘 나오고... 리모컨 기능 좋습니다!\n넷플 아이콘 등 버튼 하나로 바로 접속 되...",
    "rating": 4.36,
    "reviews": 136,
    "category": "고화질",
    "image": AppImages.kProduct2
  },
  {
    "position": 3,
    "crownIcon": AppImages.kCrown3,
    "crownColor": Colors.brown,
    "brand": "라익미",
    "product": "스마트 DS4001L NETRANGE",
    "features": "반응속도 및 화질이 여러분에게 선사해주는...\n가성비TV라인의 제품을 사용해보세요!",
    "rating": 3.98,
    "reviews": 98,
    "category": "가성비",
    "image": AppImages.kProduct3
  },
];

// Todo reviewers List Data

final List<Map<String, dynamic>> reviewers = [
  {"name": "Name01", "image": AppImages.kCat1, "isGold": true},
  {"name": "Name02", "image": AppImages.kCat2, "isGold": false},
  {"name": "Name03", "image": AppImages.kCat3, "isGold": false},
  {"name": "Name04", "image": AppImages.kCat4, "isGold": false},
  {"name": "Name05", "image": AppImages.kCat5, "isGold": false},
  {"name": "Name06", "image": AppImages.kCat6, "isGold": false},
  {"name": "Name07", "image": AppImages.kCat7, "isGold": false},
  {"name": "Name08", "image": AppImages.kCat8, "isGold": false},
  {"name": "Name09", "image": AppImages.kCat9, "isGold": false},
  {"name": "Name10", "image": AppImages.kCat10, "isGold": false},
];
