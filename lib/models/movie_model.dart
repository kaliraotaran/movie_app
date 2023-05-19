class Movie {
  final String name;
  final String imagePath;
  final String videoPath;
  final String category;
  final int year;
  final Duration duration;

  const Movie({
    required this.name,
    required this.imagePath,
    required this.videoPath,
    required this.category,
    required this.year,
    required this.duration,
  });
  static const List<Movie> movies = [
    Movie(
      name: 'The Sea Beast',
      imagePath: 'assets/images/seabeasts.png',
      //    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt9288046%2Fmediaindex&psig=AOvVaw0zXiXD21NRhPJUUtTotIDz&ust=1683911718108000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPiappDi7f4CFQAAAAAdAAAAABAE',
      videoPath: 'assets/videos/example1.mov',
      category: 'Kids',
      year: 2022,
      duration: Duration(hours: 1, minutes: 55),
    ),
    Movie(
      name: 'Purple Hearts',
      imagePath: 'assets/images/purplehearts.png',
      // 'https://images.unsplash.com/photo-1518134346374-184f9d21cea2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
      videoPath: 'assets/videos/example1.mov',
      category: 'Romance',
      year: 2022,
      duration: Duration(hours: 2, minutes: 3),
    ),
    Movie(
      name: 'The Gray Man',
      imagePath: 'assets/images/grayman.jpeg',
      //  'https://images.unsplash.com/photo-1559583109-3e7968136c99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      videoPath: 'assets/videos/example1.mov',
      category: 'Thriller',
      year: 2022,
      duration: Duration(hours: 2, minutes: 9),
    ),
    Movie(
      name: 'Thirteen Lives',
      imagePath: 'assets/images/thirteenlives.png',
      // 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwallpapercave.com%2Fthirteen-lives-wallpapers&psig=AOvVaw0r_QRWeb5OVkjxpkxbJztT&ust=1683912431262000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCIiYreTk7f4CFQAAAAAdAAAAABAE',
      // 'https://images.unsplash.com/photo-1559108318-39ed452bb6c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
      videoPath: 'assets/videos/example1.mov',
      category: 'Drama',
      year: 2022,
      duration: Duration(hours: 2, minutes: 22),
    ),
    Movie(
      name: 'The Innocents',
      imagePath: 'assets/images/innocents.png',
      // 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
      videoPath: 'assets/videos/example1.mov',
      category: 'Thriller',
      year: 2022,
      duration: Duration(hours: 1, minutes: 58),
    ),
    Movie(
      name: 'Lightyear',
      imagePath: 'assets/images/lightyear.png',
      //  'https://images.unsplash.com/photo-1611419010196-a360856fc42f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
      videoPath: 'assets/videos/example1.mov',
      category: 'Kids',
      year: 2022,
      duration: Duration(hours: 1, minutes: 40),
    ),
    Movie(
      name: 'Leave No Trace',
      imagePath: 'assets/images/leavenotrace.png',
      //   'https://images.unsplash.com/photo-1597910037310-7dd8ddb93e24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      videoPath: 'assets/videos/example1.mov',
      category: 'Drama',
      year: 2022,
      duration: Duration(hours: 1, minutes: 48),
    ),
    Movie(
      name: 'Hustle',
      imagePath: 'assets/images/hustle.png',
      // 'https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
      videoPath: 'assets/videos/example1.mov',
      category: 'Drama',
      year: 2022,
      duration: Duration(hours: 1, minutes: 58),
    ),
  ];
}
