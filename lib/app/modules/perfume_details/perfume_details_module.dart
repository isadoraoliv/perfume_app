import 'package:perfume_app/app/modules/perfume_details/perfume_details_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:perfume_app/app/modules/perfume_details/perfume_details_page.dart';

class PerfumeDetailsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PerfumeDetailsController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PerfumeDetailsPage()),
      ];

  static Inject get to => Inject<PerfumeDetailsModule>.of();
}
