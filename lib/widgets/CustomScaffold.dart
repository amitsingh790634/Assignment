import 'package:assignment/core/constants/allExport.dart';

class CustomScaffold extends StatefulWidget {
  final Widget? body;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBar;
  final Color statusBarColor;
  final Color backgroundColor;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool extendBodyBehindAppBar;
  final bool resizeToAvoidBottomInset;

  /// Todo NEW: The drawer Widget for a custom side drawer
  final Widget? drawer;

  /// Todo NEW: Key for controlling the Scaffold (opening drawer, etc.)
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const CustomScaffold({
    super.key,
    this.body,
    this.appBar,
    this.bottomSheet,
    this.floatingActionButton,
    this.resizeToAvoidBottomInset = false,
    this.bottomNavigationBar,
    this.floatingActionButtonLocation,
    this.extendBodyBehindAppBar = false,
    this.statusBarColor = AppColors.kWhite,
    this.backgroundColor = AppColors.kWhite,
    this.drawer,
    this.scaffoldKey,
  });

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  void initState() {
    super.initState();

    setStatusBarColorAndBrightness();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void setStatusBarColorAndBrightness() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.scaffoldKey,
      drawer: widget.drawer,
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
      bottomSheet: widget.bottomSheet,
      backgroundColor: widget.backgroundColor,
      appBar: widget.appBar ??
          AppBar(
            toolbarHeight: 0,
            backgroundColor: widget.statusBarColor,
            elevation: 0,
          ),
      body: widget.body,
      floatingActionButtonLocation: widget.floatingActionButtonLocation,
      bottomNavigationBar: widget.bottomNavigationBar,
      floatingActionButton: widget.floatingActionButton,
    );
  }
}
