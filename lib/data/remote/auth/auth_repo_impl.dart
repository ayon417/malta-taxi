import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/core/endpoints.dart';
import 'package:malta_taxi/data/remote/auth/auth_repo.dart';
import 'package:malta_taxi/data/remote/auth/models/login_model.dart';
import 'package:malta_taxi/data/remote/auth/models/otp_verification_model.dart';
import 'package:malta_taxi/data/remote/auth/models/success_model.dart';
import 'package:malta_taxi/data/remote/auth/models/update_user_model.dart';
import 'package:malta_taxi/data/remote/auth/models/user_details_model.dart';
import 'package:malta_taxi/utils/utils.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiClient _apiClient;

  AuthRepoImpl(this._apiClient);

  @override
  Future<Either<ApiException, LoginResponse>> login(
    LoginRequest loginRequest,
  ) async {
    log(loginRequest.mobile.toString());
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$loginEndpoint",
        loginRequestToJson(loginRequest),
      );
      Logger.write(response.toString());
      return Right(LoginResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, OtpVerificationResponse>> verifyOtp(
    OtpVerificationRequest otpVerificationRequest,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$verifyOtpEndpoint",
        otpVerificationRequestToJson(otpVerificationRequest),
      );
      Logger.write(response.toString());
      return Right(OtpVerificationResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UpdateUserResponse>> updateUserDetails(
    UpdateUserRequest updateUserRequest,
  ) async {
    try {
      final response = await _apiClient.patch(
        "${AppConstants.baseUrl}$updateProfile",
        updateUserRequestToJson(updateUserRequest),
      );
      Logger.write(response.toString());
      return Right(UpdateUserResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UserDetailsResponse>> userdetails() async {
    try {
      final response = await _apiClient.get(
        "${AppConstants.baseUrl}$userDetails",
      );
      Logger.write(response.toString());
      return Right(UserDetailsResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SuccessResponse>> deleteAccount(
      String userId,) async {
    try {
      final response = await _apiClient.delete(
        "${AppConstants.baseUrl}$adminApi/$userId",
      );
      Logger.write(response.toString());
      return Right(SuccessResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
