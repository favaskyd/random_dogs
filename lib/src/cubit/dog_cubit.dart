import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:random_dogs/src/cubit/dogreposatory.dart';
import 'package:random_dogs/src/services/models/dogs.dart';

part 'dog_state.dart';

class DogCubit extends Cubit<DogState> {
  DogCubit() : super(DogInitial()){
getData();
  }
   Repository repository=Repository();
  Future getData()async{
    emit(DogLoading());
    try{
      final response=await repository.fetData();
      String message=response.message;
      String status=response.status;
      emit(DogLoaded(message, status));
    }catch(ex){Exception(ex);}
  }
}
