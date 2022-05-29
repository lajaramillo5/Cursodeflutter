import 'package:flutter/cupertino.dart';
import 'package:inline/Model/model_chat.dart';

class ProviderChat extends ChangeNotifier{
  TextEditingController _editChat = TextEditingController();
  List<ModelChat> _listChat = [];

  TextEditingController get editChat => _editChat;

  set editChat(TextEditingController value) {
    _editChat = value;
    notifyListeners();
  }

  List<ModelChat> get listChat => _listChat;

  set listChat(List<ModelChat> value) {
    _listChat = value;
    notifyListeners();
  }

  addChat(ModelChat modelChat){
    _listChat.add(modelChat);
    _editChat.clear();
    notifyListeners();
  }
}