class UserModel {
  String name, phoneNumber, profileImag;
  UserModel(
      {required this.name,
      required this.phoneNumber,
      required this.profileImag});
}

List<UserModel> usersData = [
  UserModel(
    name: "John Smith",
    phoneNumber: "123456",
    profileImag:
        "https://static.vecteezy.com/system/resources/thumbnails/019/900/322/small/happy-young-cute-illustration-face-profile-png.png",
  ),
  UserModel(
    name: "Elizabeth Stark",
    phoneNumber: "123456",
    profileImag:
        "https://p.kindpng.com/picc/s/24-248442_female-user-avatar-woman-profile-member-user-profile.png",
  ),
  UserModel(
    name: "Arthur",
    phoneNumber: "123456",
    profileImag:
        "https://static.vecteezy.com/system/resources/thumbnails/019/900/322/small/happy-young-cute-illustration-face-profile-png.png",
  ),
  UserModel(
    name: "Grace",
    phoneNumber: "123456",
    profileImag:
        "https://static.vecteezy.com/system/resources/thumbnails/019/900/322/small/happy-young-cute-illustration-face-profile-png.png",
  ),
];
