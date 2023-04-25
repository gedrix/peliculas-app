
import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/repositories/video_post_repository_impl.dart';

class DiscoverProvider extends ChangeNotifier{

 final VideoPostRepositoryImpl videoPostRepository;

  bool initialLoading = true;
  List<VideoPost> video = [];

  DiscoverProvider({
    required this.videoPostRepository
  });

  Future<void> loadNextPage() async{

    // await Future.delayed(const Duration(seconds: 2) );

    // final List<VideoPost> newVideos = videoPosts.map( 
    //     ( video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()
    //   ).toList();

    final newVideos = await videoPostRepository.getTredingVideosByPage(1);
    video.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }

  

}