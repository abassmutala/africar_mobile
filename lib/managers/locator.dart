import 'package:africar/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  // locator.registerLazySingleton(() => DialogService());
  // locator.registerLazySingleton(() => AuthService());
  // locator.registerLazySingleton(() => DatabaseService());
  // locator.registerLazySingleton(() => LocationService());
  // locator.registerLazySingleton(() => LauncherService());
  // locator.registerLazySingleton(() => StorageService());
  // locator.registerLazySingleton(() => ImageSelector());
  // locator.registerLazySingleton(() => PushNotificationService());
  // locator.registerLazySingleton(() => AnalyticsService());
}
