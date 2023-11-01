import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_portfolio/dashboard/model/github_model.dart';
import 'package:my_portfolio/dashboard/service.dart/api_service.dart';

part 'dashbaord_state.dart';

class DashbaordCubit extends Cubit<DashbaordState> {
  DashbaordCubit() : super(DashbaordInitial());

  Future<void> getGithubProfile(String username) async {
    try {
      GitHubModel response =
          await DashboardService.getGithubProfile(username: username);
      response.id != null
          ? emit(GithubFetch(response))
          : emit(GithubFetchWithError("unable to fetch details, try again"));
    } catch (e) {
      emit(GithubFetchWithError("issues fetching details, try again later"));
    }
  }
}
