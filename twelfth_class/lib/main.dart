import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twelfth_class/counter_provider.dart';
import 'package:twelfth_class/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> CounterProvider()),
        
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int? _counter;

//   void _incrementCounter() {
//     setState(() {
//       _counter = _counter! + 1;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _counter = 0;
//     print("init state called");
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     print("did change dependencies called");
//     print(Theme.of(context).primaryColor);
//   }

//   @override
//   void didUpdateWidget(covariant MyHomePage oldWidget) {
//     print("did update widget called");
//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("build called");
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key, required this.color});
//   final Color color;

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   TextEditingController nameCtrl = TextEditingController();
//   @override
//   void didUpdateWidget(covariant MyWidget oldWidget) {
//     // TODO: implement didUpdateWidget
//     print("New color==> ${widget.color}");
//     print("Old Color${oldWidget.color}");
//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 250,
//       width: 250,
//       color: widget.color,
//     );
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }
// }
