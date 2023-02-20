part of 'splash_cubit.dart';



@immutable
abstract class SplashState {
  const SplashState();
}

class SplashInitial extends SplashState {
  const SplashInitial();
}

class SplashLoading extends SplashState {
  const SplashLoading();
}

class SplashLoaded extends SplashState {
  final SplashModel splashModel;
  const SplashLoaded(this.splashModel);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is SplashLoaded && runtimeType == other.runtimeType &&
              splashModel == other.splashModel;

  @override
  int get hashCode => splashModel.hashCode;


}

class SplashError extends SplashState {
  final String error;
  const SplashError(this.error);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is SplashError && runtimeType == other.runtimeType &&
              error == other.error;

  @override
  int get hashCode => error.hashCode;

}
