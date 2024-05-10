import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/study/study.dart';
import 'package:yoko_app/utils/utils.dart';
import 'package:retrofit/dio.dart';

part 'quiz_remote_datasource.g.dart';

@RestApi(baseUrl: apiUrl)
abstract class QuizRemoteDataSource {
  factory QuizRemoteDataSource(Dio dio) = _QuizRemoteDataSource;

  @GET('/collections/{id}/quiz')
  @Header('Content-Type: application/json')
  Future<HttpResponse<BaseResponse<List<QuizQuestionModel>>>> getQuizQuestions({
    @Path('id') required int collectionId,
  });
}
