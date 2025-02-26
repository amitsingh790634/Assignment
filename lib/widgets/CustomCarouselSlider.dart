import 'dart:async';

import 'package:assignment/core/constants/allExport.dart';

class CustomCarouselSlider extends StatefulWidget {
  final List<String> images;
  final double height;
  final double width;
  final bool autoScroll;
  final int autoScrollDelay;
  final Color activeDotColor;
  final Color inactiveDotColor;
  final double dotSize;
  final bool loop;
  final BoxFit? fit;

  const CustomCarouselSlider({
    super.key,
    required this.images,
    this.height = 250,
    this.width = double.infinity,
    this.autoScroll = true,
    this.autoScrollDelay = 3,
    this.activeDotColor = AppColors.kWhite,
    this.inactiveDotColor = AppColors.kLightGrey,
    this.dotSize = 6,
    this.loop = true,
    this.fit,
  });

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  late PageController _pageController;
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    if (widget.autoScroll) {
      _startAutoSlide();
    }
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentIndex != next) {
        setState(() {
          _currentIndex = next;
        });
      }
    });
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: widget.autoScrollDelay), (timer) {
      if (_currentIndex < widget.images.length - 1) {
        _pageController.animateToPage(
          _currentIndex + 1,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else if (widget.loop) {
        _pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: widget.height,
          width: widget.width,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.images.length,
            itemBuilder: (context, index) {
              return _buildCarouselItem(index);
            },
          ),
        ),
        Positioned(
          bottom: 10,
          child: _buildDotsIndicator(),
        ),
      ],
    );
  }

  Widget _buildCarouselItem(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Image.asset(
        widget.images[index],
        width: double.infinity,
        height: widget.height,
        fit: widget.fit ?? BoxFit.cover,
      ),
    );
  }

  Widget _buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.images.asMap().entries.map((entry) {
        int index = entry.key;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 2),
          height: widget.dotSize,
          width: _currentIndex == index ? widget.dotSize * 3 : widget.dotSize,
          decoration: BoxDecoration(
            color: _currentIndex == index
                ? widget.activeDotColor
                : widget.inactiveDotColor,
            borderRadius: BorderRadius.circular(50),
          ),
        );
      }).toList(),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }
}
