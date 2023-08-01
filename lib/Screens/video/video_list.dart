import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer_miniproject/screens/video/video_play.dart';

class VideoList extends StatefulWidget {
  const VideoList({super.key});

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final video = 'assets/images/video.mp4';

  late VideoPlayerController controller;

  @override
  // void initState() {
  //   super.initState();
  //   controller = VideoPlayerController.asset(video);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text(
          'Video',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
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
          itemBuilder: (ctx, index) {
            return Slidable(
              endActionPane:
                  ActionPane(motion: const DrawerMotion(), children: [
                SlidableAction(
                  spacing: 5,
                  onPressed: (context) {},
                  icon: Icons.delete,
                  backgroundColor: Colors.red,
                  label: 'Delete',
                ),
                SlidableAction(
                  spacing: 5,
                  onPressed: (context) {},
                  icon: Icons.edit,
                  backgroundColor: Colors.blue,
                  label: 'Edit',
                ),
              ]),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VideoPlay(),
                      ));
                },
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/play.png',
                      color: Colors.orange),
                ),
                title: Text('Video ${index + 1}',
                    style: const TextStyle(fontSize: 20)),
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider(
              thickness: 1,
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
