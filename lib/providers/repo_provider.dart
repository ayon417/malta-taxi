import 'package:malta_taxi/data/remote/auth/auth_repo.dart';
import 'package:malta_taxi/data/remote/auth/auth_repo_impl.dart';
import 'package:malta_taxi/providers/api_client_provider.dart';
import 'package:malta_taxi/utils/utils.dart';

final authRepositoryProvider = Provider<AuthRepo>( 
  (ref) => AuthRepoImpl(
    ref.read(apiClientProvider),
  ),
);
