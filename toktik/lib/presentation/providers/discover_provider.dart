
import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier{

  //Todo repository, dataSource

  bool initialLoading = true;
  List<VideoPost> video = [];

  Future<void> loadNextPage() async{

    // await Future.delayed(const Duration(seconds: 2) );

    final List<VideoPost> newVideos = videoPosts.map( 
      ( video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()
      ).toList();

    video.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }

  

}