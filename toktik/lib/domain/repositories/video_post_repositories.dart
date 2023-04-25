
import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostRepositories{

  Future <List<VideoPost>> getTredingVideosByPage(int page);

  Future <List<VideoPost>> getFavoriteVideosByUser(String userID);

}