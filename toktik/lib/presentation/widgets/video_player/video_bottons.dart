import 'package:flutter/material.dart';
import 'package:toktik/config/helppers/human_format.dart';
import 'package:animate_do/animate_do.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoBottons extends StatelessWidget {
  final VideoPost video;
  const VideoBottons({
    Key? key,
    required this.video,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          _CustomIconBotton(value: video.likes, iconColor: Colors.red, iconData: Icons.favorite,),
          const SizedBox(height: 20,),
          _CustomIconBotton(value: video.likes, iconData: Icons.remove_red_eye_outlined,),
          const SizedBox(height: 20,),
          SpinPerfect(
              infinite: true,
              duration: const Duration(seconds: 5),
              child: _CustomIconBotton(value: 0, iconData: Icons.play_circle_outlined,)
            ),

      ],
    );
  }
}


class _CustomIconBotton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconBotton({
    Key? key,
    required this.value,
    required this.iconData,
    iconColor
  }) : color= iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){}, icon: Icon(iconData, color: color,size: 30,)),
        if (value >0) Text(HumanFormarts.HumanReadbleNumber(value.toDouble()))
      ],
    );
  }
}
