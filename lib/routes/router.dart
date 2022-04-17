// @CupertinoAutoRouter        
// @AdaptiveAutoRouter        
// @CustomAutoRouter 
//
//


import 'package:auto_route/auto_route.dart';

import '../view/home_page.dart';

@MaterialAutoRouter(        
  replaceInRouteName: 'Page,Route',        
  routes: <AutoRoute>[        
    AutoRoute(page: HomePage, initial: true , path: '/'),        
  ],        
)        
class $AppRouter {}