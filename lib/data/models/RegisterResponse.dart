/// status : true
/// message : "تم التسجيل بنجاح"
/// data : {"name":"Somaya","email":"somaya@logy.com","phone":"0102046","id":22849,"image":"https://student.valuxapps.com/storage/assets/defaults/user.jpg","token":"JyQZWiRGEo6qNJvXc3CSCvuQXCHWI8zn83Mdy7Fe40zbWnykrYkcyG6MxJ2Ovth41JQGRO"}

class RegisterResponse {
  RegisterResponse({
      bool? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  RegisterResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
RegisterResponse copyWith({  bool? status,
  String? message,
  Data? data,
}) => RegisterResponse(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// name : "Somaya"
/// email : "somaya@logy.com"
/// phone : "0102046"
/// id : 22849
/// image : "https://student.valuxapps.com/storage/assets/defaults/user.jpg"
/// token : "JyQZWiRGEo6qNJvXc3CSCvuQXCHWI8zn83Mdy7Fe40zbWnykrYkcyG6MxJ2Ovth41JQGRO"

class Data {
  Data({
      String? name, 
      String? email, 
      String? phone, 
      int? id, 
      String? image, 
      String? token,}){
    _name = name;
    _email = email;
    _phone = phone;
    _id = id;
    _image = image;
    _token = token;
}

  Data.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _id = json['id'];
    _image = json['image'];
    _token = json['token'];
  }
  String? _name;
  String? _email;
  String? _phone;
  int? _id;
  String? _image;
  String? _token;
Data copyWith({  String? name,
  String? email,
  String? phone,
  int? id,
  String? image,
  String? token,
}) => Data(  name: name ?? _name,
  email: email ?? _email,
  phone: phone ?? _phone,
  id: id ?? _id,
  image: image ?? _image,
  token: token ?? _token,
);
  String? get name => _name;
  String? get email => _email;
  String? get phone => _phone;
  int? get id => _id;
  String? get image => _image;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['phone'] = _phone;
    map['id'] = _id;
    map['image'] = _image;
    map['token'] = _token;
    return map;
  }

}