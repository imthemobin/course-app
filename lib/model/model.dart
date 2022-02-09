class Course {
  String auther;
  String detail;
  String avatar;
  String imgUrl;

  Course(this.auther, this.detail, this.avatar, this.imgUrl);

  static List<Course> generator() {
    return [
      Course('Luma Lanori', 'Learn ride bike', 'assets/images/mobin.jpg', 'assets/images/1.jpg'),
      Course('Mobin Mashar', 'Learn helikopter', 'assets/images/mobin.jpg', 'assets/images/2.jpg'),
    ];
  }
}
