class Announcement {
  final int id;
  final String title;
  final String description;
  final String date;

  Announcement({required this.id, required this.title,required this.description,required this.date});

  factory Announcement.fromJson(Map<String, dynamic> jsonData) {
    return Announcement(
      id: jsonData['id'],
      title: jsonData['title'],
      description: jsonData['description'],
      date: jsonData['created_at'],
    );
  }
}
