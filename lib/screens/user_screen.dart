import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/users_cubit.dart';
import '../cubits/users_state.dart';
import '../widgets/user_item.dart';

class RandomUserSingleScreen extends StatelessWidget {
  const RandomUserSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Random User"),
      ),
      body: BlocBuilder<UsersCubit, UsersState>(
        builder: (context, state) {
          if (state is UsersInitial) {
            context.read<UsersCubit>().getUsers();
            return const Center(child: CircularProgressIndicator());
          } else if (state is UsersLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is UsersSuccess) {
            var users = state.usersData;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                var user = users[index];
                return UserItem(
                  image: user["picture"]["thumbnail"],
                  name: "${user["name"]["first"]} ${user["name"]["last"]}",
                  email: user["email"],
                  phone: user["phone"],
                  age: user["dob"]["age"],
                );
              },
            );
          } else if (state is UsersFailure) {
            return Center(child: Text(state.errorMessage));
          }
          return const SizedBox.shrink();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<UsersCubit>().getUsers();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
