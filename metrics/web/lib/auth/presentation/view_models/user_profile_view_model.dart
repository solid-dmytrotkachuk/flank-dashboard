import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// A view model that represents the user profile for the UI.
class UserProfileViewModel extends Equatable{
  /// Indicates whether the user is anonymous.
  final bool isAnonymous;

  @override
  List<Object> get props => [isAnonymous];

  /// Creates a new instance of the [UserProfileViewModel]
  /// with the given [isAnonymous] value.
  ///
  /// The [isAnonymous] must not be `null`.
  const UserProfileViewModel({
    @required this.isAnonymous,
  }) : assert(isAnonymous != null);

}