abstract class MessageService {
	void sendMessage(String msg, String rec);
}

class EmailServiceImpl implements MessageService {
  @override
  void sendMessage(String message, String receiver) {
    //logic to send email
    print("Email sent to $receiver with message $message.");
  }
}

class SMSServiceImpl implements MessageService {
  @override
  void sendMessage(String message, String receiver) {
    //logic to send SMS
    print("SMS sent to $receiver with message $message.");
  }
}