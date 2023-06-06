import 'package:flutter/material.dart';

class WallpaperScreen extends StatelessWidget {
  const WallpaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wallpapers",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: List.generate(
                  20,
                  (index) => GestureDetector(
                    onTap: () {
                      print("Container tapped");
                    },
                    child: Container(
                      height: 10,
                      width: 10,
                      color: Colors.grey,
                      child: const Center(
                        child: Text("Hello World"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              height: 52,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                onPressed: () {
                  print("Elevated Button pressed");
                },
                child: const Text("Save", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
