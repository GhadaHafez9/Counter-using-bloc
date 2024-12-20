import 'package:get_it/get_it.dart';
import 'package:testingapp/feature/counter/Presentation/controllers/counter_bloc.dart';

final GetIt sl = GetIt.instance;

void initGetIt() {
  sl.registerSingleton<CounterBloc>(CounterBloc());
}
