part of 'dog_cubit.dart';

abstract class DogState extends Equatable {
  const DogState();
}

class DogInitial extends DogState {
  @override
  List<Object> get props => [];
}

class DogLoading extends DogState {
  @override
  List<Object> get props => [];
}

class DogLoaded extends DogState {
  final message;
  final status;
  DogLoaded(this.message,this.status);
  @override
  List<Object> get props => [message,status];
}

class DogError extends DogState {
  @override
  List<Object> get props => [];
}
