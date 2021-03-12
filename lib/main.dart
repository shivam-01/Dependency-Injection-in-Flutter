import 'injection_container.dart';
import 'message_service.dart';

void main() {
  init();
  getIt<Client>().send("Hi Bill", "bill@abc.com");
}

class MyApplication {
  MessageService _service;

  MyApplication(this._service);

  void processMessages(String msg, String rec) {
    //do some msg validation, manipulation logic etc
    this._service.sendMessage(msg, rec);
  }
}

class Client {
  void send(String msg, String rec) {
    getIt<MyApplication>().processMessages(msg, rec);
  }
}