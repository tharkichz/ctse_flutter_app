class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.money = 0,
    this.rating = 0.0,
  });

  String title;
  int lessonCount;
  int money;
  double rating;
  String imagePath;

  static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'assets/interFace10.jpg',
      title: 'UI Design',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/interFace11.jpg',
      title: 'OCJP',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/interFace9.jpg',
      title: 'Angular JS',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
  ];

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/interFace6.jpg',
      title: 'SQL Databases',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/interFace8.jpg',
      title: 'Web Design ',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/interFace5.jpg',
      title: 'Flutter',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/interFace7.jpg',
      title: 'Microservices',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
  ];
}