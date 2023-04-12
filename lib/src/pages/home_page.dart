import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_dogs/src/cubit/dog_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
final _cubit =DogCubit();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DogCubit, DogState>(
        bloc: _cubit,
        builder: (context, state) {
          if(state is DogLoading){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }else if (state is DogLoaded){
            return Column(
             
              children: [Image.network(state.message),
              Text(state.status)]
            );
          }else if(state is DogError){
            return Center(child: Icon(Icons.error),);
          }else{
            return Container();
          }

        },
      ),
    );
  }
}
