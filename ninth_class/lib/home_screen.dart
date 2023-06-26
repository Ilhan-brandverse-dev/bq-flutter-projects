import 'package:flutter/material.dart';
import 'package:ninth_class/user_list_tile.dart';
import 'package:ninth_class/user_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    print(" home screen render");
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Users Data",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        UserModel modelData = usersData[index];
                        return UserListTile(
                          modelData: modelData,
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 16,
                          ),
                      itemCount: usersData.length))
            ],
          ),
        ),
      ),
    );
  }
}
