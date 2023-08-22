import 'package:api_exampletwo/controller/user_controller.dart';
import 'package:api_exampletwo/model/user_model.dart';
import 'package:api_exampletwo/widgets/user_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  List<UserModel>? usersList = [];
  bool isLoading = true;
  UserController userController = UserController();
  getUsersData() async {
    usersList = await userController.getAllUsers();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getUsersData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home Screen'),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : usersList!.isNotEmpty
              ? ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  itemBuilder: (context, index) =>
                      UserTile(userData: usersList![index]),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemCount: usersList!.length)
              : const Center(
                  child: Text("No users found"),
                ),
    );
  }
}
