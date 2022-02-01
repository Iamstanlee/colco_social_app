import 'package:colco_poc/core/failure/failure.dart';
import 'package:colco_poc/core/usecases/usecase.dart';
import 'package:colco_poc/domain/repositories/posts_repository.dart';
import 'package:dartz/dartz.dart';

class DislikePostUsecase implements Usecase<bool, String> {
  final IPostRepository _postRepository;
  DislikePostUsecase(this._postRepository);

  @override
  Future<Either<Failure, bool>> call({required String param}) async {
    return _postRepository.dislikePost(param);
  }
}
