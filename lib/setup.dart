import 'package:get_it/get_it.dart';
import 'package:my_portfolio/auth/cubit/auth_cubit.dart';
import 'package:my_portfolio/dashboard/cubit/dashbaord_cubit.dart';

GetIt getIt = GetIt.instance;

class AppStartUpRegisterServices {
  static void services() {
    getIt.registerSingleton<AuthCubit>(AuthCubit());
    getIt.registerSingleton<DashbaordCubit>(DashbaordCubit());
  }
}
