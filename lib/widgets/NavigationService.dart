import '../core/constants/allExport.dart';

class NavigationService {
  /// Todo: Pop the current screen
  static void pop<T extends Object?>([T? result]) {
    navigatorKey.currentState?.pop(result);
  }

  /// Todo: Push a new screen with fade animation
  static Future<T?> push<T extends Object?>(
    Widget page, {
    RouteSettings? settings,
  }) async {
    return navigatorKey.currentState?.push<T>(
      _buildPageRoute(page, settings: settings),
    );
  }

  /// Todo: Push a new screen and remove all previous screens with fade animation
  static Future<T?> pushAndRemoveUntil<T extends Object?>(
    Widget page, {
    RouteSettings? settings,
    bool Function(Route<dynamic>)? predicate,
  }) async {
    predicate ??= (route) => false;
    return navigatorKey.currentState?.pushAndRemoveUntil<T>(
      _buildPageRoute(page, settings: settings),
      predicate,
    );
  }

  /// Todo: Replace the current screen with a new one with fade animation
  static Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
    Widget page, {
    RouteSettings? settings,
    TO? result,
  }) async {
    return navigatorKey.currentState?.pushReplacement<T, TO>(
      _buildPageRoute(page, settings: settings),
      result: result,
    );
  }

  /// Todo: Pop until a specific route
  static void popUntil(bool Function(Route<dynamic>) predicate) {
    navigatorKey.currentState?.popUntil(predicate);
  }

  /// Todo: Build a custom page route with fade animation
  static PageRouteBuilder<T> _buildPageRoute<T>(
    Widget page, {
    RouteSettings? settings,
  }) {
    return PageRouteBuilder<T>(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
