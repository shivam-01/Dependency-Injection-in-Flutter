import 'package:get_it/get_it.dart';

import 'main.dart';
import 'message_service.dart';

final email = true;
final getIt = GetIt.instance;

void init() async {
  getIt.registerFactory<Client>(() => Client());

  getIt.registerFactory<MyApplication>(() => MyApplication(getIt()));
  if(email == true)
    getIt.registerFactory<MessageService>(() => EmailServiceImpl());
  else
    getIt.registerFactory<MessageService>(() => SMSServiceImpl());
}