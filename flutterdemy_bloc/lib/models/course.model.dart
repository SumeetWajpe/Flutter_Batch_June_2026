class CourseModel {
  final int id;
  final String? title;
  final String? subtitle;
  int? likes;
  final String? imageUrl;
  final String? description;
  final int? rating;
  final DateTime? lastUpdated;
  final String? language;
  final List<String>? subtitles;
  final String? trainer;

  CourseModel(
    this.id,
    this.title,
    this.subtitle,
    this.likes,
    this.imageUrl,
    this.description,
    this.rating,
    this.lastUpdated,
    this.language,
    this.subtitles,
    this.trainer,
  );
}


// add these
// rating - 4
// description -string
// lastupdated - Date
// trainer - String


// rating (int)
// description (string)
// trainer (string)
// lastUpdated (DateTime)
// language (string)
// subtitles (List<String>)


// also add the data(listofcourses) in ChangeNotifier