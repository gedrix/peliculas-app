import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/video/Fullscreen_player.dart';
import 'package:toktik/presentation/widgets/video_player/video_bottons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({
    Key? key,
    required this.videos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            //video player + grandiente
            SizedBox.expand(
              child: FullScreenPlayer(caption: videoPost.caption, videoUrl: videoPost.videoUrl,),
            ),

            // FullScreenPlayer(video: videoPost),
            //botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoBottons(
              video: videoPost,
            ))
          ],
        );
      },
    );
  }
}
