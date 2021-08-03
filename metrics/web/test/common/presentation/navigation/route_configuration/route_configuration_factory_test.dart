// Use of this source code is governed by the Apache License, Version 2.0
// that can be found in the LICENSE file.

import 'package:metrics/common/presentation/navigation/constants/default_routes.dart';
import 'package:metrics/common/presentation/navigation/route_configuration/route_configuration.dart';
import 'package:metrics/common/presentation/navigation/route_configuration/route_configuration_factory.dart';
import 'package:test/test.dart';

void main() {
  group("RouteConfigurationFactory", () {
    const baseUrl = 'https://test.uri';
    const queryParametersKey = 'testKey';
    const queryParametersValue = 'testValue';
    const queryParametersString = '?$queryParametersKey=$queryParametersValue';
    const queryParametersMap = {queryParametersKey: queryParametersValue};
    const routeConfigurationFactory = RouteConfigurationFactory();

    test(
      ".create() returns a loading route configuration if the given uri is null",
      () {
        const expectedConfiguration = DefaultRoutes.loading;

        final configuration = routeConfigurationFactory.create(null);

        expect(configuration, equals(expectedConfiguration));
      },
    );

    test(
      ".create() returns a loading route configuration if the given uri does not contain the path",
      () {
        const expectedConfiguration = DefaultRoutes.loading;
        final uri = Uri.parse(baseUrl);

        final configuration = routeConfigurationFactory.create(uri);

        expect(configuration, equals(expectedConfiguration));
      },
    );

    test(
      ".create() returns a login route configuration if the given uri contains a login path",
      () {
        final expectedConfiguration = RouteConfiguration.login(
          parameters: const {},
        );
        final uri = Uri.parse('$baseUrl${DefaultRoutes.login.path}');

        final configuration = routeConfigurationFactory.create(uri);

        expect(configuration, equals(expectedConfiguration));
      },
    );

    test(
      ".create() returns a login route configuration with parameters from the given uri query parameters if the uri contains a login path",
      () {
        final uri = Uri.parse(
          '$baseUrl${DefaultRoutes.login.path}$queryParametersString',
        );

        final expectedConfiguration = RouteConfiguration.login(
          parameters: queryParametersMap,
        );

        final configuration = routeConfigurationFactory.create(uri);

        expect(configuration, equals(expectedConfiguration));
      },
    );

    test(
      ".create() returns a dashboard route configuration if the given uri contains a dashboard path",
      () {
        final expectedConfiguration = RouteConfiguration.dashboard(
          parameters: const {},
        );
        final uri = Uri.parse('$baseUrl${DefaultRoutes.dashboard.path}');

        final configuration = routeConfigurationFactory.create(uri);

        expect(configuration, equals(expectedConfiguration));
      },
    );

    test(
      ".create() returns a dashboard route configuration with parameters from the given uri query parameters if the uri contains a dashboard path",
      () {
        final uri = Uri.parse(
          '$baseUrl${DefaultRoutes.dashboard.path}$queryParametersString',
        );

        final expectedConfiguration = RouteConfiguration.dashboard(
          parameters: queryParametersMap,
        );

        final configuration = routeConfigurationFactory.create(uri);

        expect(configuration, equals(expectedConfiguration));
      },
    );

    test(
      ".create() returns a project groups route configuration if the given uri contains a project groups path",
      () {
        final expectedConfiguration = RouteConfiguration.projectGroups(
          parameters: const {},
        );
        final uri = Uri.parse('$baseUrl${DefaultRoutes.projectGroups.path}');

        final configuration = routeConfigurationFactory.create(uri);

        expect(configuration, equals(expectedConfiguration));
      },
    );

    test(
      ".create() returns a project groups route configuration with parameters from the given uri query parameters if the uri contains a project groups path",
      () {
        final uri = Uri.parse(
          '$baseUrl${DefaultRoutes.projectGroups.path}$queryParametersString',
        );

        final expectedConfiguration = RouteConfiguration.projectGroups(
          parameters: queryParametersMap,
        );

        final configuration = routeConfigurationFactory.create(uri);

        expect(configuration, equals(expectedConfiguration));
      },
    );

    test(
      ".create() returns a debug menu route configuration if the given uri contains a debug menu path",
      () {
        final expectedConfiguration = RouteConfiguration.debugMenu(
          parameters: const {},
        );
        final uri = Uri.parse('$baseUrl${DefaultRoutes.debugMenu.path}');

        final configuration = routeConfigurationFactory.create(uri);

        expect(configuration, equals(expectedConfiguration));
      },
    );

    test(
      ".create() returns a debug menu route configuration with parameters from the given uri query parameters if the uri contains a debug menu path",
      () {
        final uri = Uri.parse(
          '$baseUrl${DefaultRoutes.debugMenu.path}$queryParametersString',
        );

        final expectedConfiguration = RouteConfiguration.debugMenu(
          parameters: queryParametersMap,
        );

        final configuration = routeConfigurationFactory.create(uri);

        expect(configuration, equals(expectedConfiguration));
      },
    );

    test(
      ".create() returns a dashboard route configuration if the given uri contains an unknown path",
      () {
        final expectedConfiguration = DefaultRoutes.dashboard;
        final uri = Uri.parse('$baseUrl/path');

        final configuration = routeConfigurationFactory.create(uri);

        expect(configuration, equals(expectedConfiguration));
      },
    );
  });
}
