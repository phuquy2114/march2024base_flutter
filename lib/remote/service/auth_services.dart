import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../models/car_model.dart';
import '../../models/mode_model.dart';
import '../../models/user_model.dart';
import 'body/avatar_body.dart';
import 'body/car_body.dart';
import 'body/change_password_body.dart';
import 'body/file_body.dart';
import 'body/login_body.dart';
import 'body/name_body.dart';
import 'body/signup_body.dart';
import 'body/sub_body.dart';
import 'response/base_response.dart';
import 'response/car_response.dart';
import 'response/file_response.dart';
import 'response/login_response.dart';

part 'auth_services.g.dart';

@RestApi()
abstract class AuthServices {
  factory AuthServices(Dio dio, {String baseUrl}) = _AuthServices;

  @POST('/api/auth/signup')
  Future<BaseResponse<LoginResponse>> signupAccount(
    @Body() SignupBody body,
  );

  @POST('/api/auth/change-password')
  Future<BaseResponse<LoginResponse>> changePass(
    @Body() ChangePasswordBody body,
  );

  @POST('/api/auth/login')
  Future<BaseResponse<LoginResponse>> loginAccount(
    @Body() LoginBody body,
  );

  @POST('/api/firebase/subscribe')
  Future<BaseResponse<LoginResponse>> postToken(
    @Body() SubBody body,
  );

  @PUT('/api/firebase/unsubscribe')
  Future<BaseResponse<LoginResponse>> unPostToken(
    @Body() SubBody body,
  );

  @GET('/api/users/me')
  Future<BaseResponse<UserModel>> getProfile();

  @PUT('/api/users/me')
  Future<BaseResponse<UserModel>> putProfile(
    @Body() SignupBody body,
  );

  @PUT('/api/users/me')
  Future<BaseResponse<UserModel>> changeName(
    @Body() NameBody body,
  );

  @PUT('/api/users/me')
  Future<BaseResponse<UserModel>> changeAvatar(
    @Body() AvatarBody body,
  );

  @POST('/api/s3')
  Future<BaseResponse<List<FileResponse>>> postFile(
    @Body() FileBody body,
  );

  @GET('/api/car')
  Future<BaseResponse<List<CarModel>>> getListCar();

  @POST('/api/car')
  Future<BaseResponse<CarResponse>> createCar(@Body() CarBody body);

  @PUT('/api/car/{id}')
  Future<BaseResponse<dynamic>> putCar(
      @Path("id") String id, @Body() CarBody body);

  @DELETE('/api/car/{id}')
  Future<BaseResponse<dynamic>> deleteCar(@Path("id") String id);

  @GET('/api/model')
  Future<BaseResponse<List<ModeModel>>> getListModel(
      @Query("brand") String brand);

  @GET('/api/car/brand')
  Future<BaseResponse<List<String>>> getListBrand();
}
