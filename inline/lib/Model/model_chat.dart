class ModelChat {
  String? _uid;
  String? _text;
  String? _hour;

  ModelChat(this._uid, this._text, this._hour);

  String get uid => _uid!;

  set uid(String value) {
    _uid = value;
  }

  String get text => _text!;

  String get hour => _hour!;

  set hour(String value) {
    _hour = value;
  }

  set text(String value) {
    _text = value;
  }

  @override
  String toString() {
    return 'ModelChat{_uid: $_uid, _text: $_text, _hour: $_hour}';
  }
}