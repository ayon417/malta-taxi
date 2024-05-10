import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/auth/models/login_model.dart';
import 'package:malta_taxi/data/remote/auth/models/otp_verification_model.dart';
import 'package:malta_taxi/data/remote/auth/models/success_model.dart';
import 'package:malta_taxi/data/remote/auth/models/update_user_model.dart';
import 'package:malta_taxi/data/remote/auth/models/user_details_model.dart';

abstract class AuthRepo {
  Future<Either<ApiException, LoginResponse>> login(LoginRequest loginRequest);

  Future<Either<ApiException, OtpVerificationResponse>> verifyOtp(
    OtpVerificationRequest verifyOtp,
  );

  Future<Either<ApiException, UpdateUserResponse>> updateUserDetails(
    UpdateUserRequest updateUserRequest,
  );

  Future<Either<ApiException, UserDetailsResponse>> userdetails();
  Future<Either<ApiException, SuccessResponse>> deleteAccount(String userId);
}
