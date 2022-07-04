import 'package:fluttertoast/fluttertoast.dart';
import 'package:turiba/utils/app_color.dart';

toast(message, success) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: success == false ? AppColors.red : AppColors.green,
    textColor: AppColors.white,
    fontSize: 16.0,
  );
}
