import 'package:bloc/bloc.dart';
import 'package:random_users/cubits/users_state.dart';
import 'package:random_users/services/random_user_service.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersInitial());

  Future<void> getUsers() async {
    emit(UsersLoading());
    try {
      final usersModel = await RandomUserService.getData();
      emit(UsersSuccess(usersData: usersModel.users));
    } catch (e) {
      emit(UsersFailure(errorMessage: e.toString()));
    }
  }
}


