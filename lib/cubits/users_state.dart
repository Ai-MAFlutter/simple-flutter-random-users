final class UsersState {}

final class UsersInitial extends UsersState {}

final class UsersLoading extends UsersState {}

final class UsersSuccess extends UsersState {
  final List usersData;
  UsersSuccess({required this.usersData});
}

final class UsersFailure extends UsersState {
  final String errorMessage;
  UsersFailure({required this.errorMessage});
}



