/// text : "Test Text"
/// number : 1
/// found : true
/// type : "trivia"

class SampleModel {
  SampleModel({
    String text,
    num number,
    bool found,
    String type,
  }) {
    _text = text;
    _number = number;
    _found = found;
    _type = type;
  }

  SampleModel.fromJson(dynamic json) {
    _text = json['text'];
    _number = json['number'];
    _found = json['found'];
    _type = json['type'];
  }
  String _text;
  num _number;
  bool _found;
  String _type;
  SampleModel copyWith({
    String text,
    num number,
    bool found,
    String type,
  }) =>
      SampleModel(
        text: text ?? _text,
        number: number ?? _number,
        found: found ?? _found,
        type: type ?? _type,
      );
  String get text => _text;
  num get number => _number;
  bool get found => _found;
  String get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['number'] = _number;
    map['found'] = _found;
    map['type'] = _type;
    return map;
  }
}
