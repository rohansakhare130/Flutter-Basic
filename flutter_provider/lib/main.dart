import 'package:flutter/material.dart';
import 'package:flutter_provider/provides/listmovie.dart';
import 'package:flutter_provider/provides/movie_providers.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(ChangeNotifierProvider(
//     create: (_) => MovieProviders(),
//     child: const MyApp(),
//   ));
// }

void main(){
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MovieProviders()),
      ],
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Package',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProviderTutorial(),
    );
  }
}

class ProviderTutorial extends StatelessWidget {
  const ProviderTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fav = context.watch<MovieProviders>().favlist;

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ListMovie() ));
      }),
      appBar: AppBar(
        title: Text("Choose Movie ${fav.length}"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("Movie $index"),
            trailing: GestureDetector(
              onTap: () {
                if (!fav.contains(index)) {
                  context.read<MovieProviders>().addtoList(index);
                } else {
                  context.read<MovieProviders>().removeFav(index);
                }
              },
              child: Icon(
                Icons.favorite,
                color: fav.contains(index) ? Colors.red : Colors.grey,
              ),
            ),
          );
        },
      ),
    );
  }
}
