import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../item.dart';

part 'item_event.dart';

part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  ItemBloc() : super(ItemInitial()) {
    on<LoadItems>((event, emit) async {
      await Future<void>.delayed(const Duration(seconds: 2));
      emit(const ItemLoaded([]));
    });
    on<AddItem>((event, emit) {
      if (state is ItemLoaded) {
        final state = this.state as ItemLoaded;
        emit(ItemLoaded(state.items..add(event.item)));
      }
    });
    on<RemoveItem>((event, emit) {
      if (state is ItemLoaded) {
        final state = this.state as ItemLoaded;
        emit(ItemLoaded(state.items..remove(event.item)));
      }
    });
  }
}
