import 'package:classroom_manager/services/api_service.dart';
import 'package:classroom_manager/ui/dashboard/dashboard_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: DashboardView, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {}
