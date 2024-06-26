import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:yoko_app/features/collections/collections.dart';
import 'package:yoko_app/features/general/general.dart';
import 'package:yoko_app/utils/utils.dart';

part 'collections_remote_datasource.g.dart';

@RestApi(
  baseUrl: apiUrl,
)
abstract class CollectionsRemoteDataSource {
  factory CollectionsRemoteDataSource(Dio dio) = _CollectionsRemoteDataSource;

  @GET('/users/collections')
  @Header('Content-Type: application/json')
  Future<
          HttpResponse<
              BaseResponse<PaginatableResponseEntity<List<CollectionModel>>>>>
      getHomeCollections({
    @Query('page') required int page,
    @Query('pageSize') required int pageSize,
    @Query('sort') required String sort,
    @Query('orderBy') required String orderBy,
    @Query('filterParam') required String filterParam,
    @Query('filterValue') required String filterValue,
    @Query('filterOperator') required String filterOperator,
  });

  @GET('/collections/public')
  @Header('Content-Type: application/json')
  Future<
          HttpResponse<
              BaseResponse<PaginatableResponseEntity<List<CollectionModel>>>>>
      getStoreCollections({
    @Query('page') required int page,
    @Query('pageSize') required int pageSize,
    @Query('sort') required String sort,
    @Query('orderBy') required String orderBy,
    @Query('filterParam') required String filterParam,
    @Query('filterValue') required String filterValue,
    @Query('filterOperator') required String filterOperator,
  });

  @GET('/collections/{id}')
  @Header('Content-Type: application/json')
  Future<HttpResponse<BaseResponse<CollectionModel>>> getCollectionById({
    @Path('id') required int id,
  });

  @POST('/users/startCollection/{id}')
  @Header('Content-Type: application/json')
  Future<HttpResponse<BaseResponse<CollectionModel>>> addCollectionToUser({
    @Path('id') required int id,
  });

  @POST('/collections')
  @MultiPart()
  @Header('Content-Type: application/json')
  Future<HttpResponse<BaseResponse<CollectionModel>>> createCollection({
    @Part() required String name,
    @Part() required String text,
    @Part() required String status,
    @Part() required String color,
    @Part() required File banner,
    @Part() required File poster,
    @SendProgress() required ProgressCallback? onSendProgress,
  });
}
