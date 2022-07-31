import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/failure.dart';

part 'register_bloc_bloc.freezed.dart';
part 'register_bloc_event.dart';
part 'register_bloc_state.dart';

class RegisterBlocBloc extends Bloc<RegisterBlocEvent, RegisterBlocState> {
  RegisterBlocBloc() : super(RegisterBlocState.initial()) {
    on<Register>(_onRegister);
  }

  Future<void> _onRegister(
    Register event,
    Emitter<RegisterBlocState> emit,
  ) async {}
}
