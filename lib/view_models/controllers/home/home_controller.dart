import 'package:get/get.dart';
import 'package:getx_apis/models/home/user_list_model.dart';
import 'package:getx_apis/repository/home_repo/home_repo.dart';

import '../../../data/response/status.dart';

class HomeController extends GetxController{

  final _api = HomeRepo();

  final rxRequestStatus = Status.loading.obs;
  final userList = UserListModel().obs;
  final RxString error = "".obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;

  void setUserList(UserListModel _value) => userList.value= _value;

  void setError(String _value) => error.value = _value;

  void userListApi(){

    _api.userListApi().then((value) {

      setRxRequestStatus(Status.completed);

      setUserList(value);

    }).onError((error, stackTrace) {

      setError(error.toString());

      setRxRequestStatus(Status.error);

    });
  }

  void refreshUserListApi(){

    setRxRequestStatus(Status.loading);

    _api.userListApi().then((value) {

      setRxRequestStatus(Status.completed);

      setUserList(value);

    }).onError((error, stackTrace) {

      setError(error.toString());

      setRxRequestStatus(Status.error);

    });
  }
}