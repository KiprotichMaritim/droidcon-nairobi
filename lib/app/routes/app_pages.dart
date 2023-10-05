import 'package:get/get.dart' show GetPage, Transition;

import 'package:droidcon_nairobi/app/routes/app_routes.dart';
import 'package:droidcon_nairobi/app/modules/root/views/root_view.dart';
import 'package:droidcon_nairobi/app/modules/root/bindings/root_bindings.dart';

class AppPages {
  static const initial = Routes.root;

  static final routes = [
    GetPage(name: Routes.root, page: () => RootView(), binding: RootBindings()),
  ];
}
