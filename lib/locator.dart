import 'package:flutter_web/Services/navigation_service.dart';
import 'package:get_it/get_it.dart';

//navigation service that is going to contain the key
GetIt locator = GetIt.instance;

void setUpLocator() {
  //Singleton the clause will only be constructed when requested
  //and only one navigation service will exist for the entire lifetime of the app
  locator.registerLazySingleton(() => NavigationService());
}
