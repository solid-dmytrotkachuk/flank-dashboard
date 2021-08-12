// Use of this source code is governed by the Apache License, Version 2.0
// that can be found in the LICENSE file.

import 'package:meta/meta.dart';
import 'package:metrics/feature_config/presentation/view_models/feature_config_view_model.dart';

///A view model that represents a feature config for the public dashboard
///feature.
class PublicDashboardFeatureConfigViewModel extends FeatureConfigViewModel {
  /// Creates a new instance of the [PublicDashboardFeatureConfigViewModel]
  /// with the given [isEnabled] value.
  const PublicDashboardFeatureConfigViewModel({
    @required bool isEnabled,
  }) : super(isEnabled: isEnabled);
}
