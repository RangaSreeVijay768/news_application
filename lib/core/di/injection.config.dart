// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chat_app/core/analytics/firebase_analytics_service.dart' as _i6;
import 'package:chat_app/core/network/dio_client.dart' as _i3;
import 'package:chat_app/core/services/vibrations_service.dart' as _i7;
import 'package:chat_app/my_app/articles/repos/articles_repo.dart' as _i4;
import 'package:chat_app/my_app/articles/services/article_service.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ADioClient>(_i3.ADioClient());
    gh.singleton<_i4.ArticleRepo>(_i4.ArticleRepo());
    gh.singleton<_i5.ArticleService>(_i5.ArticleService());
    gh.singleton<_i6.FirebaseAnalyticsService>(_i6.FirebaseAnalyticsService());
    gh.singleton<_i7.VibrationsService>(_i7.VibrationsService());
    return this;
  }
}
