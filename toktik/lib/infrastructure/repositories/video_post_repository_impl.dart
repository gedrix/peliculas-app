
import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

import '../../domain/repositories/video_post_repositories.dart';

class VideoPostRepositoryImpl implements VideoPostRepositories{

  final VideoPostDatasource videosDataSource;

  VideoPostRepositoryImpl({
    required this.videosDataSource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTredingVideosByPage(int page) {
   return videosDataSource.getTredingVideosByPage(page);

  }
  
}