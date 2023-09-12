import 'package:get/get.dart';
import 'package:servaid/routes/routes_name.dart';
import 'package:servaid/view/BottomNav/BottomNav.dart';


class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.BottomNav,
          page: () => BottomNav(),
        ),
//         GetPage(
//           name: RoutesName.Login,
//           page: () => Login(),
//         ),
//         GetPage(name: RoutesName.SignUp, page: () => SignUp()),
//         GetPage(
//           name: RoutesName.EmailVerification,
//           page: () => EmailVerification(),
//         ),
//         GetPage(
//           name: RoutesName.EmailVerification,
//           page: () => ForgetPassword(),
//         ),
//         GetPage(
//           name: RoutesName.EmailVerification,
//           page: () => HomePage(),
//         ),
//          GetPage(
//           name: RoutesName.Note,
//           page: () => Note(),
//         ),
//  GetPage(
//           name: RoutesName.Checklist,
//           page: () => Checklist(),
//         ),

//  GetPage(
//           name: RoutesName.Folder,
//           page: () => Folder(),
//         ),

//  GetPage(
//           name: RoutesName.FullPageNote,
//           page: () => FullPageNote(),
//         ),




        
      ];
}
