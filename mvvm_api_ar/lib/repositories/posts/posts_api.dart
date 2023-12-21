import 'package:dio/dio.dart';
import 'package:mvvm_api_ar/models/post_model.dart';
import 'package:mvvm_api_ar/repositories/posts/posts_repository.dart';

class PostsAPI extends PostsRepository {
  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [];
    // TODO: implement gtAllPosts
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      var list = response.data as List;
      posts = list.map((post) => PostModel.fromJson(post)).toList();
      print(response.data);
    } catch (e) {
      print(e);
    }
    print(posts);
    return posts;
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
}
