class DynamicLinkService {
  static Future<void> handle() async {
    // FirebaseDynamicLinks.instance.onLink(
    //     onSuccess: (PendingDynamicLinkData dynamicLink) async {
    //   final Uri deepLink = dynamicLink?.link;

    //   if (deepLink != null) {
    //     _handleDeepLink(deepLink);
    //   }
    // }, onError: (OnLinkErrorException e) async {
    //   print(e.message);
    // });

    // final PendingDynamicLinkData data =
    //     await FirebaseDynamicLinks.instance.getInitialLink();
    // final Uri deepLink = data?.link;

    // if (deepLink != null) {
    //   _handleDeepLink(deepLink);
    //   return;
    // }

    // final linkStr = StorageUtils.getDynamicLink();
    // if (linkStr != null) {
    //   final link = Uri.parse(linkStr);
    //   if (link != null) {
    //     _handleDeepLink(link);
    //   }
    // }
  }

  // static void _handleDeepLink(Uri deepLink) async {
  //   final path = deepLink.pathSegments.first;
  //   switch (path) {
  //     case 'example':
  //       break;
  //     default:
  //       break;
  //   }
  // }
}
