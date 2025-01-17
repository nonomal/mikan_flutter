// GENERATED CODE - DO NOT MODIFY MANUALLY
// **************************************************************************
// Auto generated by https://github.com/fluttercandies/ff_annotation_route
// **************************************************************************

import 'package:ff_annotation_route_library/ff_annotation_route_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mikan_flutter/model/record_item.dart';
import 'package:mikan_flutter/model/season.dart';
import 'package:mikan_flutter/model/season_gallery.dart';
import 'package:mikan_flutter/model/subgroup.dart';
import 'package:mikan_flutter/model/year_season.dart';

import 'ui/pages/bangumi_page.dart';
import 'ui/pages/forgot_password_page.dart';
import 'ui/pages/home_page.dart';
import 'ui/pages/login_page.dart';
import 'ui/pages/recent_subscribed_page.dart';
import 'ui/pages/record_detail_page.dart';
import 'ui/pages/register_page.dart';
import 'ui/pages/season_list_page.dart';
import 'ui/pages/single_season_page.dart';
import 'ui/pages/splash_page.dart';
import 'ui/pages/subgroup_page.dart';
import 'ui/pages/subscribed_season_page.dart';

// ignore_for_file: prefer_const_literals_to_create_immutables,unused_local_variable,unused_import
FFRouteSettings getRouteSettings({
  required String name,
  Map<String, dynamic>? arguments,
  Widget? notFoundWidget,
}) {
  final Map<String, dynamic> safeArguments =
      arguments ?? const <String, dynamic>{};
  switch (name) {
    case 'bangumi':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: BangumiPage(
          key: asT<Key?>(safeArguments['key']),
          bangumiId: asT<String>(safeArguments['bangumiId'])!,
          cover: asT<String>(safeArguments['cover'])!,
          heroTag: asT<String>(safeArguments['heroTag'])!,
        ),
        routeName: '/bangumi',
      );
    case 'forget-password':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: ForgotPasswordPage(),
        routeName: '/forget-password',
      );
    case 'home':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: const HomePage(),
        routeName: '/',
      );
    case 'login':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: LoginPage(),
        routeName: '/login',
      );
    case 'recent-subscribed':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: RecentSubscribedPage(
          key: asT<Key?>(safeArguments['key']),
          loaded: asT<List<RecordItem>>(safeArguments['loaded'])!,
        ),
        routeName: '/recent-subscribed',
      );
    case 'record-detail':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: RecordDetailPage(
          key: asT<Key?>(safeArguments['key']),
          url: asT<String>(safeArguments['url'])!,
        ),
        routeName: '/record-detail',
      );
    case 'register':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: RegisterPage(),
        routeName: '/register',
      );
    case 'season':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: SingleSeasonPage(
          key: asT<Key?>(safeArguments['key']),
          season: asT<Season>(safeArguments['season'])!,
        ),
        routeName: '/season',
      );
    case 'season-list':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: SeasonListPage(
          key: asT<Key?>(safeArguments['key']),
          years: asT<List<YearSeason>>(safeArguments['years'])!,
        ),
        routeName: '/season-list',
      );
    case 'splash':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: const SplashPage(),
        routeName: '/splash',
      );
    case 'subgroup':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: SubgroupPage(
          key: asT<Key?>(safeArguments['key']),
          subgroup: asT<Subgroup>(safeArguments['subgroup'])!,
        ),
        routeName: '/subgroup',
      );
    case 'subscribed-season':
      return FFRouteSettings(
        name: name,
        arguments: arguments,
        widget: SubscribedSeasonPage(
          key: asT<Key?>(safeArguments['key']),
          years: asT<List<YearSeason>>(safeArguments['years'])!,
          galleries: asT<List<SeasonGallery>>(safeArguments['galleries'])!,
        ),
        routeName: '/subscribed-season',
      );
    default:
      return FFRouteSettings(
        name: '404',
        routeName: '404_page',
        widget: notFoundWidget,
      );
  }
}
