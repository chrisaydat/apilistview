class MyApiModel {
final String title;
final String description;
final String? imageUrl;

MyApiModel ({
  required this.title,
  required this.description,
  this.imageUrl,
});
factory MyApiModel.fromJson (Map<String, dynamic> json){
  return MyApiModel(
    title: json['title'] as String,
    description: json['description'] as String,
    imageUrl: json['imageUrl'] as String?,
  );
}
}