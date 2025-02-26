import 'package:assignment/core/constants/allExport.dart';
import 'package:assignment/screens/CategoryScreen.dart';
import 'package:assignment/screens/CommunityScreen.dart';
import 'package:assignment/screens/MyPageScreen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    CategoryScreen(),
    CommunityScreen(),
    MyPageScreen(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.grid_view,
    Icons.groups,
    Icons.person,
  ];

  final List<String> _labels = ["홈", "카테고리", "커뮤니티", "마이페이지"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: _screens[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.kBlack,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 12,
                spreadRadius: 3,
                offset: Offset(0, -3),
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },

            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey[400],
            showUnselectedLabels: true,
            backgroundColor: AppColors.kWhite,
            elevation: 2, // Removes default shadow
            items: List.generate(4, (index) {
              return BottomNavigationBarItem(
                icon: Icon(
                  _icons[index],
                  color:
                      _selectedIndex == index ? Colors.black : Colors.grey[400],
                ),
                label: _labels[index],
              );
            }),
          ),
        ),
      ),
    );
  }
}
