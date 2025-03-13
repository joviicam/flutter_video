class Video {
  final String id;
  final String title;
  final String description;
  final String fileId;
  final String contentType;
  final int fileSize;
  final DateTime uploadDate;

  Video({
    required this.id,
    required this.title,
    required this.description,
    required this.fileId,
    required this.contentType,
    required this.fileSize,
    required this.uploadDate,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id'] ?? '',
      title: json['title'] ?? 'Sin título',
      description: json['description'] ?? '',
      fileId: json['fileId']?.toString() ?? '',
      contentType: json['contentType'] ?? '',
      fileSize: json['fileSize'] ?? 0,
      uploadDate:
          json['uploadDate'] != null
              ? DateTime.parse(json['uploadDate'])
              : DateTime.now(),
    );
  }
}
