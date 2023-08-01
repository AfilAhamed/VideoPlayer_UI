import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playlist'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                size: 30,
                color: Colors.orange.shade700,
              )),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5, left: 5),
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(
                Icons.folder,
                size: 45,
              ),
              title: Text(
                'Playlist ${index + 1}',
                style: const TextStyle(fontSize: 20),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              thickness: 1,
            );
          },
        ),
      ),
    );
  }
}
