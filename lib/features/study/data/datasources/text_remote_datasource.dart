import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/features/study/study.dart';
import 'package:yoko_app/utils/utils.dart';

part 'text_remote_datasource.g.dart';

@RestApi(baseUrl: apiUrl)
abstract class TextRemoteDataSource {
  factory TextRemoteDataSource(Dio dio, {String baseUrl}) =
      _TextRemoteDataSource;

  @GET('/collections/{id}/text')
  @Header('Content-Type: application/json')
  Future<HttpResponse<BaseResponse<TextStudyModel>>> getTextStudy({
    @Path('id') required int id,
  });
}
