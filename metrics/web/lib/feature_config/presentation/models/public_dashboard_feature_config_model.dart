// Use of this source code is governed by the Apache License, Version 2.0
// that can be found in the LICENSE file.

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

///A view model that represents a feature config for the public dashboard
///feature.
class PublicDashboardFeatureConfigModel extends Equatable {
  /// Indicates whether this feature is enabled.
  final bool isEnabled;

  @override
  List<Object> get props => [isEnabled];

  /// Creates a new instance of the [PublicDashboardFeatureConfigModel]
  /// with the given [isEnabled] value.
  ///
  /// The [isEnabled] must not be `null`.
  const PublicDashboardFeatureConfigModel({
    @required this.isEnabled,
  }) : assert(isEnabled != null);
}
