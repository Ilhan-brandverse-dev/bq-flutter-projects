import 'package:eleventh_class/test.dart';
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
      darkTheme: ThemeData(
          primarySwatch: Colors.purple,
          scaffoldBackgroundColor: Colors.black,
          primaryColor: Colors.purple),
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          scaffoldBackgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.white),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.indigo),
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Colors.purple,
              onPrimary: Colors.purple,
              secondary: Colors.purpleAccent,
              onSecondary: Colors.purpleAccent,
              error: Colors.red,
              onError: Colors.red,
              background: Colors.white,
              onBackground: Colors.white,
              surface: Colors.white,
              onSurface: Colors.white),
          appBarTheme: const AppBarTheme(
              elevation: 0,
              color: Colors.white,
              titleTextStyle: TextStyle(fontSize: 20, color: Colors.black))),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          NewWidget(Colors.yellow),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  const NewWidget(this.color, {super.key});
  final Color color;
  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  void initState() {
    print('first render');
        print(Theme.of(context).primaryColor);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant NewWidget oldWidget) {
    print('did update sj s s');
    print(widget.color);
    print(oldWidget.color);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print(Theme.of(context).primaryColor);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      height: 250,
      child: TextButton(
          onPressed: () {
            setState(() {});
          },
          child: Text('sadasdsa')),
      width: 250,
    );
  }
}
