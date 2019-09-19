import 'package:get_it/get_it.dart';
import 'package:liveretailapp/examples/localAuthentication/localAuthenticationRepository.dart';

GetIt exampleLocator = GetIt();

void setupLocator() {
 exampleLocator.registerLazySingleton(() => LocalAuthenticationRepository());
}