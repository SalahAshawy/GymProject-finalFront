class Invitation {
  String guestName;
  String phoneNumber;
  String userName;
  int id;


  Invitation({ required this.userName,required this.guestName,required this.phoneNumber,required this.id});

  factory Invitation.fromJson(Map<String, dynamic> json) {
    return Invitation(
      guestName: json['name'],
      phoneNumber: json['number'],
      userName: json['user']['name'],
      id: json['id'],

    );
  }
}
