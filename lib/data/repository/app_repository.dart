import 'package:starter/data/models/user.model.dart';
import 'package:starter/data/provider/auth_provider.dart';
import 'package:starter/utils/helper/exception_handler.dart';
import 'package:starter/utils/values/constants.dart';

class AppRepository {
  final AuthApiClient apiClient = AuthApiClient();

  Future<UserModel> getCurrentUser() async {
    try {
      return await apiClient.currentUser();
    } catch (e) {
      print(e);
      throw CustomException(message: ErrorMessages.unauthorized);
    }
  }

  Future signOut() async {
    return await apiClient.signOut();
  }
}
