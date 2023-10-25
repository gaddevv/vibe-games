import 'package:flutter/cupertino.dart';

Future<T?> pushPage<T>(BuildContext context, Widget page, {String? name}) {
  return Navigator.of(context).push<T>(
    CupertinoPageRoute(
      builder: (BuildContext context) => page,
      settings: RouteSettings(name: name),
    ),
  );
}
