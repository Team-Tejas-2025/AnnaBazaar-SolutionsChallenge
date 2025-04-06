import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: appStateNotifier.loggedIn
            ? SelectYourRoleWidget()
            : LanguageSelectionWidget(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? SelectYourRoleWidget()
              : LanguageSelectionWidget(),
        ),
        FFRoute(
          name: SelectYourRoleWidget.routeName,
          path: SelectYourRoleWidget.routePath,
          builder: (context, params) => SelectYourRoleWidget(),
        ),
        FFRoute(
          name: SplashScreenWidget.routeName,
          path: SplashScreenWidget.routePath,
          builder: (context, params) => SplashScreenWidget(),
        ),
        FFRoute(
          name: FarmersLocationWidget.routeName,
          path: FarmersLocationWidget.routePath,
          builder: (context, params) => FarmersLocationWidget(
            aadharnumber: params.getParam(
              'aadharnumber',
              ParamType.int,
            ),
            aadharimage: params.getParam(
              'aadharimage',
              ParamType.String,
            ),
            kisannumber: params.getParam(
              'kisannumber',
              ParamType.String,
            ),
            kisancardimage: params.getParam(
              'kisancardimage',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: FarmerHomescreenPageWidget.routeName,
          path: FarmerHomescreenPageWidget.routePath,
          builder: (context, params) => FarmerHomescreenPageWidget(),
        ),
        FFRoute(
          name: FarmerProfileWidget.routeName,
          path: FarmerProfileWidget.routePath,
          builder: (context, params) => FarmerProfileWidget(),
        ),
        FFRoute(
          name: AnnaWalletFarmerWidget.routeName,
          path: AnnaWalletFarmerWidget.routePath,
          builder: (context, params) => AnnaWalletFarmerWidget(),
        ),
        FFRoute(
          name: LanguageSelectionWidget.routeName,
          path: LanguageSelectionWidget.routePath,
          builder: (context, params) => LanguageSelectionWidget(),
        ),
        FFRoute(
          name: SuccesfulOrderStatusWidget.routeName,
          path: SuccesfulOrderStatusWidget.routePath,
          builder: (context, params) => SuccesfulOrderStatusWidget(),
        ),
        FFRoute(
          name: OrderConfirmFarmerWidget.routeName,
          path: OrderConfirmFarmerWidget.routePath,
          builder: (context, params) => OrderConfirmFarmerWidget(),
        ),
        FFRoute(
          name: OrderDeclineFarmerWidget.routeName,
          path: OrderDeclineFarmerWidget.routePath,
          builder: (context, params) => OrderDeclineFarmerWidget(),
        ),
        FFRoute(
          name: FarmerProfileEditWidget.routeName,
          path: FarmerProfileEditWidget.routePath,
          builder: (context, params) => FarmerProfileEditWidget(),
        ),
        FFRoute(
          name: OTPverificationUpdateprofileWidget.routeName,
          path: OTPverificationUpdateprofileWidget.routePath,
          requireAuth: true,
          builder: (context, params) => OTPverificationUpdateprofileWidget(),
        ),
        FFRoute(
          name: FarmerNegotiationResponseWidget.routeName,
          path: FarmerNegotiationResponseWidget.routePath,
          builder: (context, params) => FarmerNegotiationResponseWidget(),
        ),
        FFRoute(
          name: BuyerCartWidget.routeName,
          path: BuyerCartWidget.routePath,
          builder: (context, params) => BuyerCartWidget(),
        ),
        FFRoute(
          name: BuyerCheckoutWidget.routeName,
          path: BuyerCheckoutWidget.routePath,
          builder: (context, params) => BuyerCheckoutWidget(),
        ),
        FFRoute(
          name: AadharCardUploadWidget.routeName,
          path: AadharCardUploadWidget.routePath,
          builder: (context, params) => AadharCardUploadWidget(),
        ),
        FFRoute(
          name: KisanCardUploadWidget.routeName,
          path: KisanCardUploadWidget.routePath,
          builder: (context, params) => KisanCardUploadWidget(
            aadharnumber: params.getParam(
              'aadharnumber',
              ParamType.int,
            ),
            aadharimage: params.getParam(
              'aadharimage',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: SubmitForVerficationWidget.routeName,
          path: SubmitForVerficationWidget.routePath,
          builder: (context, params) => SubmitForVerficationWidget(
            aadharnumber: params.getParam(
              'aadharnumber',
              ParamType.int,
            ),
            aadharimage: params.getParam(
              'aadharimage',
              ParamType.String,
            ),
            kisannumber: params.getParam(
              'kisannumber',
              ParamType.String,
            ),
            kisancardimage: params.getParam(
              'kisancardimage',
              ParamType.String,
            ),
            address: params.getParam(
              'address',
              ParamType.String,
            ),
            city: params.getParam(
              'city',
              ParamType.String,
            ),
            state: params.getParam(
              'state',
              ParamType.String,
            ),
            pincode: params.getParam(
              'pincode',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: RetailProductDetailsPageWidget.routeName,
          path: RetailProductDetailsPageWidget.routePath,
          builder: (context, params) => RetailProductDetailsPageWidget(
            pname: params.getParam(
              'pname',
              ParamType.String,
            ),
            pimages: params.getParam(
              'pimages',
              ParamType.String,
            ),
            proprice: params.getParam(
              'proprice',
              ParamType.int,
            ),
            prating: params.getParam(
              'prating',
              ParamType.int,
            ),
            pdesc: params.getParam(
              'pdesc',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ProductListingSuccessWidget.routeName,
          path: ProductListingSuccessWidget.routePath,
          builder: (context, params) => ProductListingSuccessWidget(
            pname: params.getParam(
              'pname',
              ParamType.String,
            ),
            productprice: params.getParam(
              'productprice',
              ParamType.int,
            ),
            productunit: params.getParam(
              'productunit',
              ParamType.String,
            ),
            productphoto: params.getParam(
              'productphoto',
              ParamType.String,
            ),
            productcategory: params.getParam(
              'productcategory',
              ParamType.String,
            ),
            availablequantity: params.getParam(
              'availablequantity',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: OrderDetailPageBuyerWidget.routeName,
          path: OrderDetailPageBuyerWidget.routePath,
          builder: (context, params) => OrderDetailPageBuyerWidget(),
        ),
        FFRoute(
          name: OrderConfirmationBuyerWidget.routeName,
          path: OrderConfirmationBuyerWidget.routePath,
          builder: (context, params) => OrderConfirmationBuyerWidget(),
        ),
        FFRoute(
          name: BuyerOrdersWidget.routeName,
          path: BuyerOrdersWidget.routePath,
          builder: (context, params) => BuyerOrdersWidget(),
        ),
        FFRoute(
          name: WishlistedProductsWidget.routeName,
          path: WishlistedProductsWidget.routePath,
          builder: (context, params) => WishlistedProductsWidget(),
        ),
        FFRoute(
          name: UploadProductsWidget.routeName,
          path: UploadProductsWidget.routePath,
          builder: (context, params) => UploadProductsWidget(),
        ),
        FFRoute(
          name: ProductReviewAndConfirmWidget.routeName,
          path: ProductReviewAndConfirmWidget.routePath,
          builder: (context, params) => ProductReviewAndConfirmWidget(
            pname: params.getParam(
              'pname',
              ParamType.String,
            ),
            productprice: params.getParam(
              'productprice',
              ParamType.int,
            ),
            productunit: params.getParam(
              'productunit',
              ParamType.String,
            ),
            productphoto: params.getParam(
              'productphoto',
              ParamType.String,
            ),
            productcategory: params.getParam(
              'productcategory',
              ParamType.String,
            ),
            availablequantity: params.getParam(
              'availablequantity',
              ParamType.int,
            ),
            productdescription: params.getParam(
              'productdescription',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: BuyerWalletWidget.routeName,
          path: BuyerWalletWidget.routePath,
          builder: (context, params) => BuyerWalletWidget(),
        ),
        FFRoute(
          name: DeliveryTrackingPageWidget.routeName,
          path: DeliveryTrackingPageWidget.routePath,
          builder: (context, params) => DeliveryTrackingPageWidget(),
        ),
        FFRoute(
          name: CategoriesSectionBuyerWidget.routeName,
          path: CategoriesSectionBuyerWidget.routePath,
          builder: (context, params) => CategoriesSectionBuyerWidget(),
        ),
        FFRoute(
          name: FarmerPhoneLoginWidget.routeName,
          path: FarmerPhoneLoginWidget.routePath,
          builder: (context, params) => FarmerPhoneLoginWidget(),
        ),
        FFRoute(
          name: BuyerProfileWidget.routeName,
          path: BuyerProfileWidget.routePath,
          builder: (context, params) => BuyerProfileWidget(),
        ),
        FFRoute(
          name: BuyerAccountWidget.routeName,
          path: BuyerAccountWidget.routePath,
          builder: (context, params) => BuyerAccountWidget(),
        ),
        FFRoute(
          name: CounterPricePageForFarmersWidget.routeName,
          path: CounterPricePageForFarmersWidget.routePath,
          asyncParams: {
            'neg': getDoc(['negotiation'], NegotiationRecord.fromSnapshot),
          },
          builder: (context, params) => CounterPricePageForFarmersWidget(
            neg: params.getParam(
              'neg',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: FirstCounterWidget.routeName,
          path: FirstCounterWidget.routePath,
          asyncParams: {
            'bulkprodoc': getDoc(
                ['Bulkorder_product'], BulkorderProductRecord.fromSnapshot),
          },
          builder: (context, params) => FirstCounterWidget(
            productId: params.getParam(
              'productId',
              ParamType.String,
            ),
            farmerId: params.getParam(
              'farmerId',
              ParamType.String,
            ),
            bulkprodoc: params.getParam(
              'bulkprodoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: NotificationForFarmersWidget.routeName,
          path: NotificationForFarmersWidget.routePath,
          builder: (context, params) => NotificationForFarmersWidget(),
        ),
        FFRoute(
          name: BuyersSideNotificationWidget.routeName,
          path: BuyersSideNotificationWidget.routePath,
          builder: (context, params) => BuyersSideNotificationWidget(),
        ),
        FFRoute(
          name: GoogleLoginPhoneLoginBuyerWidget.routeName,
          path: GoogleLoginPhoneLoginBuyerWidget.routePath,
          builder: (context, params) => GoogleLoginPhoneLoginBuyerWidget(),
        ),
        FFRoute(
          name: RealTimeChatBuyerWidget.routeName,
          path: RealTimeChatBuyerWidget.routePath,
          builder: (context, params) => RealTimeChatBuyerWidget(),
        ),
        FFRoute(
          name: ChatListScreenBuyerWidget.routeName,
          path: ChatListScreenBuyerWidget.routePath,
          builder: (context, params) => ChatListScreenBuyerWidget(),
        ),
        FFRoute(
          name: BuyerHomeScreenWidget.routeName,
          path: BuyerHomeScreenWidget.routePath,
          builder: (context, params) => BuyerHomeScreenWidget(),
        ),
        FFRoute(
          name: GoogleLoginPhoneLoginFarmerWidget.routeName,
          path: GoogleLoginPhoneLoginFarmerWidget.routePath,
          builder: (context, params) => GoogleLoginPhoneLoginFarmerWidget(),
        ),
        FFRoute(
          name: FarmerPhoneSignUpWidget.routeName,
          path: FarmerPhoneSignUpWidget.routePath,
          builder: (context, params) => FarmerPhoneSignUpWidget(),
        ),
        FFRoute(
          name: BuyerPhoneSignUpWidget.routeName,
          path: BuyerPhoneSignUpWidget.routePath,
          builder: (context, params) => BuyerPhoneSignUpWidget(
            mobileNumber: params.getParam(
              'mobileNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: CreateProfileFarmerWidget.routeName,
          path: CreateProfileFarmerWidget.routePath,
          builder: (context, params) => CreateProfileFarmerWidget(),
        ),
        FFRoute(
          name: ProductDisplayRetailAndBulkWidget.routeName,
          path: ProductDisplayRetailAndBulkWidget.routePath,
          builder: (context, params) => ProductDisplayRetailAndBulkWidget(
            bulkProductId: params.getParam(
              'bulkProductId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: BulkOrderProductDetailsWidget.routeName,
          path: BulkOrderProductDetailsWidget.routePath,
          asyncParams: {
            'bulkdoc': getDoc(
                ['Bulkorder_product'], BulkorderProductRecord.fromSnapshot),
          },
          builder: (context, params) => BulkOrderProductDetailsWidget(
            bulkProductId: params.getParam(
              'bulkProductId',
              ParamType.String,
            ),
            bulkdoc: params.getParam(
              'bulkdoc',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: OTPVerificationBuyerWidget.routeName,
          path: OTPVerificationBuyerWidget.routePath,
          builder: (context, params) => OTPVerificationBuyerWidget(
            phoneNumber: params.getParam(
              'phoneNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: OTPVerificationFarmerWidget.routeName,
          path: OTPVerificationFarmerWidget.routePath,
          builder: (context, params) => OTPVerificationFarmerWidget(
            phoneNumber: params.getParam(
              'phoneNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: SmartFarmingToolWidget.routeName,
          path: SmartFarmingToolWidget.routePath,
          builder: (context, params) => SmartFarmingToolWidget(),
        ),
        FFRoute(
          name: UploadBulkProductsWidget.routeName,
          path: UploadBulkProductsWidget.routePath,
          builder: (context, params) => UploadBulkProductsWidget(),
        ),
        FFRoute(
          name: FarmerProfileForViewonlyWidget.routeName,
          path: FarmerProfileForViewonlyWidget.routePath,
          builder: (context, params) => FarmerProfileForViewonlyWidget(),
        ),
        FFRoute(
          name: BulkUploadProductsEditWidget.routeName,
          path: BulkUploadProductsEditWidget.routePath,
          builder: (context, params) => BulkUploadProductsEditWidget(),
        ),
        FFRoute(
          name: BulkProductConfirmationWidget.routeName,
          path: BulkProductConfirmationWidget.routePath,
          builder: (context, params) => BulkProductConfirmationWidget(
            pimage: params.getParam(
              'pimage',
              ParamType.String,
            ),
            pname: params.getParam(
              'pname',
              ParamType.String,
            ),
            pcategory: params.getParam(
              'pcategory',
              ParamType.String,
            ),
            pprice: params.getParam(
              'pprice',
              ParamType.int,
            ),
            availablequanity: params.getParam(
              'availablequanity',
              ParamType.int,
            ),
            pdescription: params.getParam(
              'pdescription',
              ParamType.String,
            ),
            pminimumorderquant: params.getParam(
              'pminimumorderquant',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: AnnaBuddyWidget.routeName,
          path: AnnaBuddyWidget.routePath,
          builder: (context, params) => AnnaBuddyWidget(),
        ),
        FFRoute(
          name: RetailUploadProductsEditWidget.routeName,
          path: RetailUploadProductsEditWidget.routePath,
          builder: (context, params) => RetailUploadProductsEditWidget(),
        ),
        FFRoute(
          name: ViewActiveProductsWidget.routeName,
          path: ViewActiveProductsWidget.routePath,
          builder: (context, params) => ViewActiveProductsWidget(),
        ),
        FFRoute(
          name: ChatHomeWidget.routeName,
          path: ChatHomeWidget.routePath,
          builder: (context, params) => ChatHomeWidget(),
        ),
        FFRoute(
          name: ChatPageWidget.routeName,
          path: ChatPageWidget.routePath,
          builder: (context, params) => ChatPageWidget(
            receiveChat: params.getParam(
              'receiveChat',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['chats'],
            ),
          ),
        ),
        FFRoute(
          name: NegotiateWidget.routeName,
          path: NegotiateWidget.routePath,
          builder: (context, params) => NegotiateWidget(),
        ),
        FFRoute(
          name: RetailProductDetailsPageCopyWidget.routeName,
          path: RetailProductDetailsPageCopyWidget.routePath,
          builder: (context, params) => RetailProductDetailsPageCopyWidget(
            pname: params.getParam(
              'pname',
              ParamType.String,
            ),
            pimages: params.getParam(
              'pimages',
              ParamType.String,
            ),
            proprice: params.getParam(
              'proprice',
              ParamType.int,
            ),
            prating: params.getParam(
              'prating',
              ParamType.int,
            ),
            pdesc: params.getParam(
              'pdesc',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: OTPVerificationFarmerLoginWidget.routeName,
          path: OTPVerificationFarmerLoginWidget.routePath,
          builder: (context, params) => OTPVerificationFarmerLoginWidget(
            phoneNumber: params.getParam(
              'phoneNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: NegotiateWithFarmerWidget.routeName,
          path: NegotiateWithFarmerWidget.routePath,
          builder: (context, params) => NegotiateWithFarmerWidget(),
        ),
        FFRoute(
          name: RealTimeChatFarmerWidget.routeName,
          path: RealTimeChatFarmerWidget.routePath,
          builder: (context, params) => RealTimeChatFarmerWidget(),
        ),
        FFRoute(
          name: ChatListScreenFarmerWidget.routeName,
          path: ChatListScreenFarmerWidget.routePath,
          builder: (context, params) => ChatListScreenFarmerWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/languageSelection';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Color(0xFFF0FCF0),
                  child: Center(
                    child: Image.asset(
                      'assets/images/Splash_Anna_Bazar.gif',
                      width: 150.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    Key? key,
    required this.state,
    required this.child,
  }) : super(key: key);

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();

    // Handle erroneous links from Firebase Dynamic Links.

    String? location;

    /*
    Handle `links` routes that have dynamic-link entangled with deep-link 
    */
    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.queryParameters.containsKey('deep_link_id')) {
      final deepLinkId = widget.state.uri.queryParameters['deep_link_id'];
      if (deepLinkId != null) {
        final deepLinkUri = Uri.parse(deepLinkId);
        final link = deepLinkUri.toString();
        final host = deepLinkUri.host;
        location = link.split(host).last;
      }
    }

    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.toString().contains('request_ip_version')) {
      location = '/';
    }

    if (location != null) {
      SchedulerBinding.instance
          .addPostFrameCallback((_) => context.go(location!));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
