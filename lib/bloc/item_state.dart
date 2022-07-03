part of 'item_bloc.dart';

@immutable
abstract class ItemState extends Equatable {
  const ItemState();

  @override
  List<Object?> get props => [];
}

class ItemInitial extends ItemState {}

class ItemLoaded extends ItemState {
  final List<Item> items;

  const ItemLoaded(this.items);

  @override
  List<Object?> get props => [items];
}

class ItemError extends ItemState {
  final String errorMsg;

  const ItemError(this.errorMsg);

  @override
  List<Object?> get props => [errorMsg];
}
