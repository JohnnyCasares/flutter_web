import 'package:flutter_web/Services/navigation_service.dart';
import 'package:get_it/get_it.dart';

//navigation service that is going to contain the key
//This is a simple Service Locator for Dart and Flutter projects
//with some additional goodies highly inspired by Splat.
// It can be used instead of InheritedWidget or Provider to access objects
//e.g. from your UI.

//Accessing service objects like REST API clients or databases so that they easily can be mocked.
//Accessing View/AppModels/Managers/BLoCs from Flutter Views
GetIt locator = GetIt.instance;

void setUpLocator() {
  //Singleton the clause will only be constructed when requested
  //and only one navigation service will exist for the entire lifetime of the app

  locator.registerLazySingleton(() => NavigationService());

  //Singleton: Singletons can be registered in two ways.
  //Provide an implementation upon registration or provide a lamda
  //that will be invoked the first time your instance is requested (LazySingleton).
  // The Locator keeps a single instance of your registered type and will always return you that instance.
}
