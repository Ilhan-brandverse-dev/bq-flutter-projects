import 'package:api_exampletwo/model/user_model.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final UserModel userData;
  const UserTile({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(userData.avatar!),
      ),
      title: Text(
        "${userData.firstName} ${userData.lastName}",
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
      subtitle: Text(
        '${userData.email}',
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      ),
    );
  }
}
