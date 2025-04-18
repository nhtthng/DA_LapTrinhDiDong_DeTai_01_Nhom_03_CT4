class CourseModel {
  final String imagePath;
  final String titleLevel;
  final String titleCourse;
  final int numberOfLessons;
  final int rating;

  CourseModel({
    required this.imagePath,
    required this.titleLevel,
    required this.titleCourse,
    required this.numberOfLessons,
    required this.rating,
  });
}

List<CourseModel> dummyCourses = [
  CourseModel(
    imagePath: 'lib/Assets/IMG/banner-on-thi-tot-nghiep-thpt-toan.png',
    titleLevel: 'Khối A',
    titleCourse: 'Toán học - Luyện đề THPT QG',
    numberOfLessons: 40,
    rating: 5,
  ),
  CourseModel(
    imagePath: 'lib/Assets/IMG/banner-on-thi-tot-nghiep-thpt-vat-ly.png',
    titleLevel: 'Khối A',
    titleCourse: 'Vật Lý - Ôn tập trọng tâm',
    numberOfLessons: 35,
    rating: 5,
  ),
  CourseModel(
    imagePath: 'lib/Assets/IMG/banner-on-thi-tot-nghiep-thpt-hoa-hoc.jpg',
    titleLevel: 'Khối A',
    titleCourse: 'Hóa Học - Lý thuyết và Bài tập',
    numberOfLessons: 38,
    rating: 4,
  ),
  CourseModel(
    imagePath: 'lib/Assets/IMG/banner-on-thi-tot-nghiep-thpt-tieng-anh.png',
    titleLevel: 'Khối B',
    titleCourse: 'Sinh Học - Ôn thi chuyên đề',
    numberOfLessons: 32,
    rating: 5,
  ),
  CourseModel(
    imagePath: 'lib/Assets/IMG/banner-on-thi-tot-nghiep-thpt-tieng-anh.png',
    titleLevel: 'Khối C',
    titleCourse: 'Ngữ Văn - Phân tích tác phẩm',
    numberOfLessons: 45,
    rating: 4,
  ),
  CourseModel(
    imagePath: 'lib/Assets/IMG/banner-on-thi-tot-nghiep-thpt-tieng-anh.png',
    titleLevel: 'Khối C',
    titleCourse: 'Lịch Sử - Các giai đoạn trọng điểm',
    numberOfLessons: 30,
    rating: 5,
  ),
  CourseModel(
    imagePath: 'lib/Assets/IMG/banner-on-thi-tot-nghiep-thpt-tieng-anh.png',
    titleLevel: 'Khối C',
    titleCourse: 'Địa Lý - Kiến thức cơ bản và nâng cao',
    numberOfLessons: 28,
    rating: 4,
  ),
  CourseModel(
    imagePath: 'lib/Assets/IMG/banner-on-thi-tot-nghiep-thpt-tieng-anh.png',
    titleLevel: 'Tất cả khối',
    titleCourse: 'Tiếng Anh - Luyện đề thi',
    numberOfLessons: 42,
    rating: 5,
  ),
  CourseModel(
    imagePath: 'lib/Assets/IMG/banner-on-thi-tot-nghiep-thpt-tieng-anh.png',
    titleLevel: 'Khối C',
    titleCourse: 'GDCD - Ôn tập theo chuyên đề',
    numberOfLessons: 25,
    rating: 4,
  ),
];
