import 'dart:io';

import '../../../all_data.dart';
import '../equipments/equipment-model.dart';
class Branch {
 late int id;
  late int index;
  late String title;
  late String location;
  late String number;
  late int crowdMeter;
  late File picture;
  late String info;
  late int membersNumber;
  late int coachesNumber;
  late List<Equipment>allEquipment=[];

  Branch.fromJson(Map<String, dynamic> jsonData, {isFetch = false}) {
    id=jsonData['id'] is String ?int.parse(jsonData['id']):jsonData['id'];
    index=branchesList.length;
    title= "${jsonData['title']}";
    location= "${jsonData['location']}";
    number= "${jsonData['phone_number']}";
    crowdMeter= jsonData['crowd_meter'] is String ? int.parse(jsonData['crowd_meter']):jsonData['crowd_meter'];
    //picture= jsonData['picture'];
    info= "${jsonData['info']}";
     membersNumber= jsonData['members_number'] is String ? int.parse(jsonData['members_number']):jsonData['members_number'];
     coachesNumber= jsonData['coaches_number'] is String ?int.parse(jsonData['coaches_number']):jsonData['coaches_number'];
    if(isFetch){
      jsonData['equipments'].forEach((item){
        Equipment equipment=Equipment.fromJson(item);
        equipment.index=allEquipment.length;
        allEquipment.add(equipment);
      });
    }
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "location": location,
        "phone_number": number,
        "crowd_meter": crowdMeter,
        "picture": picture,
        "info": info,
        "members_number": membersNumber,
        "coaches_number": coachesNumber,
      };
}
