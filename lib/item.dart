import 'package:equatable/equatable.dart';

class Item  extends Equatable{
  final String id;
  final String name;

  const Item(this.id, this.name);

  @override
  List<Object?> get props => [id, name];


  static const List<Item> items = [
     Item("1", "1st"),
     Item("2", "2nd"),
     Item("3", "3rd"),
  ];
  // @override
  // bool get stringify => true;
  //
}
