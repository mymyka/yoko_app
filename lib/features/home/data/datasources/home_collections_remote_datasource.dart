import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/utils/utils.dart';

part 'home_collections_remote_datasource.g.dart';

@RestApi(
  baseUrl: apiUrl,
)
abstract class HomeCollectionsRemoteDataSource {
  factory HomeCollectionsRemoteDataSource(Dio dio) =
      _HomeCollectionsRemoteDataSource;

  @GET('/users/collections')
  @Header('Content-Type: application/json')
  Future<HttpResponse<BaseResponse<List<CollectionModel>>>> getHomeCollections({
    @Query('page') required int page,
    @Query('pageSize') required int pageSize,
    @Query('sort') required String sort,
    @Query('orderBy') required String orderBy,
    @Query('filterParam') required String filterParam,
    @Query('filterValue') required String filterValue,
    @Query('filterOperator') required String filterOperator,
  });
}
