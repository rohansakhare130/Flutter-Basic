import 'package:flutter/material.dart';
import 'package:flutter_provider/provides/movie_providers.dart';
import 'package:provider/provider.dart';

class ListMovie extends StatelessWidget {
  const ListMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fav = context.watch<MovieProviders>().favlist;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Movies'),
      ),
      body: fav.isEmpty
          ? Center(
              child: Text(
                'No favorite movies added yet!',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: fav.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    title: Text("Movie ${fav[index]}"),
                    trailing: TextButton(
                      onPressed: () {
                        context.read<MovieProviders>().removeFav(fav[index]);
                      },
                      child: Text(
                        "Remove",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
