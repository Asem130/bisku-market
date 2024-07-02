abstract class ProductesState {}

final class ProductesInitial extends ProductesState {}

final class ProductesLoading extends ProductesState {}

final class ProductesSuccsess extends ProductesState {}

final class ProductesFailre extends ProductesState {
  final String errMessage;

  ProductesFailre({required this.errMessage});
}
