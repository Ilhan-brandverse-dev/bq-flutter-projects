import 'package:api_practice/user_model.dart';
import 'package:api_practice/users_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<UserModel>? usersList = [];
  final UsersController usersController = UsersController();
  bool isLoading = true;

  getDataFromController() async {
    usersList = await usersController.getAllUsers();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getDataFromController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: usersList!.isNotEmpty
          ? ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              itemBuilder: (context, index) =>
                  UserTile(userData: usersList![index]),
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemCount: usersList!.length)
          : const Center(
              child: Text("No users found"),
            ),
    );
  }
}

class UserTile extends StatelessWidget {
  final UserModel userData;
  const UserTile({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(userData.picture!),
      ),
      title: Text(
        "${userData.title?.toUpperCase()} ${userData.firstName} ${userData.lastName}",
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
    );
  }
}
