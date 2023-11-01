part of 'dashbaord_cubit.dart';

@immutable
sealed class DashbaordState {}

final class DashbaordInitial extends DashbaordState {}

class GithubFetch extends DashbaordState {
  final GitHubModel details;
  GithubFetch(this.details);
}

class GithubFetchWithError extends DashbaordState {
  final String message;
  GithubFetchWithError(this.message);
}
