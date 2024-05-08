import 'package:equatable/equatable.dart';

class FetchHomeCollectionsParams extends Equatable {
  final int page;
  final int pageSize;
  final String sort;
  final String orderBy;
  final String filterParam;
  final String filterValue;
  final String filterOperator;

  const FetchHomeCollectionsParams({
    required this.page,
    required this.pageSize,
    this.sort = 'desc',
    this.orderBy = 'id',
    this.filterParam = '',
    this.filterValue = '',
    this.filterOperator = '',
  });

  @override
  List<Object?> get props => [
        page,
        pageSize,
        sort,
        orderBy,
        filterParam,
        filterValue,
        filterOperator,
      ];
}
