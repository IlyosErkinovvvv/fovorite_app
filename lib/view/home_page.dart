import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> _favorite = [];

  @override
  void initState() {
    _favorite = List.generate(100, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: ListView.builder(
        itemCount: _favorite.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Hello $index"),
            trailing: _favorite[index]
                ? IconButton(
                    onPressed: () {
                      favorite(index);
                    },
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  )
                : IconButton(
                    onPressed: () {
                      favorite(index);
                    },
                    icon: const Icon(Icons.favorite_border),
                  ),
          );
        },
      ),
    );
  }

  void favorite(int index) {
    if (_favorite[index]) {
      setState(() {
        _favorite[index] = !_favorite[index];
      });
    } else {
      setState(() {
        _favorite[index] = !_favorite[index];
      });
    }
  }
}
