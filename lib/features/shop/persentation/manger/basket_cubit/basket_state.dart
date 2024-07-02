abstract class BaseketStates {}

final class BasketInitial extends BaseketStates {}

final class BasketLoading extends BaseketStates {}

final class BasketSuccsess extends BaseketStates {}

final class BasketFailre extends BaseketStates {
  final String errMessage;

  BasketFailre({required this.errMessage});
}
