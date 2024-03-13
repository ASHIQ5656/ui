class CommunityPost {
  final String imagepath;
  final String title;

  CommunityPost({
    required this.imagepath,
    required this.title,
  });
  static List<CommunityPost> trendingpost = [
    CommunityPost(imagepath: "assets/images/picture 1.jpg", title: "ISRO"),
    CommunityPost(imagepath: "assets/images/picture 2", title: "Socail Media"),
    CommunityPost(imagepath: "assets/images/picture 3.jpg", title: "Google"),
    CommunityPost(
        imagepath: "assets/images/picture 4.jpg", title: "Youth Festvel"),
  ];
}
