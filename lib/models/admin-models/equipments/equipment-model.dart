class Equipment {
  final int id;
  int index=-1;
  final String name;
  final String description;
  final String picture;

  Equipment({
   required this.id,
    required this.name,
    required this.description,
    required this.picture,
  });

  factory Equipment.fromJson(Map<String, dynamic> jsonData) {
    return Equipment(
      id: jsonData['id'],
      name: jsonData['name'],
      description: jsonData['description'],
      picture: jsonData['picture'],
    );
  }
}
