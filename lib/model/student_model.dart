/// User model class to represent user data
class StudentModel {
  String name;
  String id;
  String fathersName;
  String dob;
  String gender;
  String course;
  String registrationDate;


  String email;
  String phone;
  String address;
  String imgUrl;

  StudentModel({
    required this.name,
    required this.id,
    required this.fathersName,
    required this.dob,
    required this.gender,
    required this.course,
    required this.registrationDate,
    required this.email,
    required this.phone,
    required this.address,
    required this.imgUrl,
  });
}
