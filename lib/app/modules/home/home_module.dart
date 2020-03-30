import 'package:perfume_app/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:perfume_app/app/modules/home/home_page.dart';
import 'package:perfume_app/app/modules/perfume_details/perfume_details_module.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/perfume_details', module: PerfumeDetailsModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
