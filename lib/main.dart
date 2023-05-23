import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dev Toolsを使ってみよう！！'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              TextButton(),
              ElevatedButton(onPressed: () {}, child: const Text('buttonB')),
              ElevatedButton(onPressed: () {}, child: const Text('buttonC')),
            ],
          ),
          Image.network(
            'https://www.w2solution.co.jp/tech/wp-content/uploads/2020/05/flutter-top.png',
            height: 150,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Dev Toolsを使ってみよう！',
          ),
          const Text(
            'My application is great! Everyone often uses it in my classroom.',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TextButton extends StatelessWidget {
  const TextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GradientButton();
  }
}

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: const Text('buttonA'));
  }
}

