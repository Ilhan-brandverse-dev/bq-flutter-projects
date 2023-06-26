import 'package:flutter/material.dart';
import 'package:ninth_class/user_model.dart';

class UserListTile extends StatefulWidget {
  UserListTile({super.key, required this.modelData});
  UserModel modelData;
  @override
  State<UserListTile> createState() => _UserListTileState();
}

class _UserListTileState extends State<UserListTile> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(widget.modelData.profileImag),
      ),
      title: Text("widget.modelData.name ===> $count"),
      subtitle: Text(widget.modelData.phoneNumber),
      trailing: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
