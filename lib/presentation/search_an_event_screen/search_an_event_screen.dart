import 'dart:math';

import 'bloc/search_an_event_bloc.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart' as perm_handler;

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';import 'package:kwstas_s_application2/core/app_export.dart';import 'package:kwstas_s_application2/widgets/custom_outlined_button.dart';

class SearchAnEventScreen extends StatelessWidget {
  const SearchAnEventScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchAnEventBloc>(
      create: (context) =>
      SearchAnEventBloc()
        ..add(SearchAnEventInitialized()),
      child: SearchAnEventScreen(),
    );
  }

  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false,
        body: Container(width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 20.v),
            child: SingleChildScrollView(child: Column(children: [
              _buildHeaderSection(context),
              SizedBox(height: 7.v),
              Text("msg_unleash_your_academic".tr,
                  style: theme.textTheme.bodyLarge),
              SizedBox(height: 10.v),
              _buildTelevisionSection(context),
              SizedBox(height: 16.v),
              Text("lbl_or".tr,
                  style: CustomTextStyles.headlineSmallBlack900Bold),
              SizedBox(height: 27.v),
              SizedBox(height: 63.v,
                  width: 339.h,
                  child: Stack(alignment: Alignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLetsIconsArro,
                            height: 43.v,
                            width: 46.h,
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 10.h)),
                        Align(alignment: Alignment.center,
                            child: Container(padding: EdgeInsets.symmetric(
                                horizontal: 22.h, vertical: 7.v),
                                decoration: AppDecoration.outlinePrimary
                                    .copyWith(borderRadius: BorderRadiusStyle
                                    .roundedBorder31),
                                child: Column(mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 10.v),
                                      GestureDetector(onTap: () {
                                        onTapTxtCategory(context);
                                      },
                                          child: Text("lbl_category".tr,
                                              style: theme.textTheme
                                                  .headlineSmall))
                                    ])))
                      ])),
              SizedBox(height: 5.v),
              SizedBox(height: 63.v,
                  width: 341.h,
                  child: Stack(alignment: Alignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLetsIconsArro,
                            height: 43.v,
                            width: 46.h,
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 14.h)),
                        Align(alignment: Alignment.center,
                            child: GestureDetector(onTap: () {
                              onTapSixtySix(context);
                            }, child: Container(padding: EdgeInsets.symmetric(
                                horizontal: 23.h, vertical: 12.v),
                                decoration: AppDecoration.outlinePrimary
                                    .copyWith(borderRadius: BorderRadiusStyle
                                    .roundedBorder31),
                                child: Text("lbl_volunteer".tr,
                                    style: theme.textTheme.headlineSmall))))
                      ])),
              SizedBox(height: 6.v),
              Container(width: 341.h,
                  margin: EdgeInsets.only(left: 43.h, right: 38.h),
                  padding: EdgeInsets.symmetric(
                      horizontal: 23.h, vertical: 11.v),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder31),
                  child: GestureDetector(onTap: () {
                    onTapSixtyTwo(context);
                  },
                      child: Text("lbl_location".tr,
                          style: theme.textTheme.headlineSmall))),
              SizedBox(height: 6.v),
              CustomOutlinedButton(text: "lbl_go".tr,
                  buttonStyle: ElevatedButton.styleFrom(
                      backgroundColor: CustomTextStyles.displayMediumPrimary_1
                          .color),
                  margin: EdgeInsets.only(left: 44.h, right: 37.h)),
              SizedBox(height: 22.v),
              Text("lbl_or".tr,
                  style: CustomTextStyles.headlineSmallBlack900Bold),
              BlocBuilder<SearchAnEventBloc, SearchAnEventState>(
                builder: (context, state) {
                  return SizedBox(height: 63.v,
                      width: 341.h,
                      child: Stack(
                          alignment: Alignment.center, children: [Align(
                          alignment: Alignment.bottomCenter, child: Padding(
                        padding: EdgeInsets.only(bottom: 9.v),
                        child: TextField(
                          controller: state.searchController,
                          decoration: InputDecoration(
                            hintText: 'Type an event name'.tr,
                            hintStyle: theme.textTheme.headlineSmall,
                            suffixIcon: IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {
                                String searchText = state.searchController.text;
                                if (searchText.isNotEmpty) {
                                  BlocProvider.of<SearchAnEventBloc>(context)
                                      .add(PerformSearch(searchText));
                                }
                              },
                            ),
                          ),
                          onSubmitted: (value) {
                            if (value.isNotEmpty) {
                              // Dispatch the search event
                              BlocProvider.of<SearchAnEventBloc>(context).add(
                                  PerformSearch(value));
                            }
                          },
                        ),
                      ))
                      ]));
                },

              ),
              SizedBox(height: 6.v),
              BlocBuilder<SearchAnEventBloc, SearchAnEventState>(
                builder: (context, state) {
                  return CustomOutlinedButton(
                    text: "Go", // Replace with your localization or text
                    onPressed: () {
                      String searchText = state.searchController.text;
                      if (searchText.isNotEmpty) {
                        BlocProvider.of<SearchAnEventBloc>(context).add(
                            PerformSearch(searchText));
                      }
                    },
                    buttonStyle: ElevatedButton.styleFrom(
                      backgroundColor: CustomTextStyles.displayMediumPrimary_1
                          .color,
                    ),
                    margin: EdgeInsets.only(left: 47.h, right: 34.h),
                  );
                },
              ),
              SizedBox(
                height: 5.v,
              )
            ])))));
  }

  /// Section Widget
  ///
  Widget _buildHeaderSection(BuildContext context) {
    return Container(margin: EdgeInsets.only(left: 2.h, right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 14.v),
        decoration: AppDecoration.outlinePrimary.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder50),
        child: Row(mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(imagePath: ImageConstant.imgSettings,
                  height: 68.v,
                  width: 45.h),
              Padding(
                  padding: EdgeInsets.only(left: 18.h, top: 8.v, bottom: 12.v),
                  child: Text("lbl_univentures".tr,
                      style: theme.textTheme.headlineLarge)),
              Spacer(),
              CustomImageView(imagePath: ImageConstant.imgOcticonThreeBars16,
                  height: 35.v,
                  width: 30.h,
                  margin: EdgeInsets.only(top: 17.v, right: 6.h, bottom: 16.v),
                  onTap: () {
                    onTapImgOcticonThreeBarsSixteen(context);
                  })
            ]));
  }

  /// Section Widget
  Widget _buildTelevisionSection(BuildContext context) {
    return Align(alignment: Alignment.centerLeft,
        child: SizedBox(height: 123.v,
            width: 388.h,
            child: Stack(alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(imagePath: ImageConstant.imgTelevision,
                      height: 53.adaptSize,
                      width: 53.adaptSize,
                      alignment: Alignment.topLeft),
                  Align(alignment: Alignment.bottomRight,
                      child: GestureDetector(onTap: () {
                        onTapSixtyTwo(context);
                      },
                          child: Container(padding: EdgeInsets.symmetric(
                              horizontal: 69.h, vertical: 10.v),
                              decoration: AppDecoration.outlinePrimary1
                                  .copyWith(borderRadius: BorderRadiusStyle
                                  .circleBorder50),
                              child: Column(mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    Container(width: 200.h,
                                        margin: EdgeInsets.only(left: 1.h),
                                        child: Text(
                                            "msg_search_an_event_near".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .headlineSmallOnPrimary))
                                  ]))))
                ])));
  }

  /// Navigates to the homeListScreen when the action is triggered.
  onTapImgOcticonThreeBarsSixteen(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.homeListScreen,);
  }

  onTapSixtySix(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.volunteerScreen,);
  }

  onTapTxtCategory(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.eventCategoriesScreen,);
  }

  /// Navigates to the searchAnEventGpsScreen when the action is triggered.
  onTapSixtyTwo(BuildContext context) async {
    var permissionStatus = await perm_handler.Permission.location.status;
    if (!permissionStatus.isGranted) {
      await perm_handler.Permission.location.request();
    }

    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MapScreen(initialLocation: _locationData),
      ),
    );
  }
}






class MapScreen extends StatefulWidget {
  final LocationData initialLocation;


  MapScreen({Key? key, required this.initialLocation}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;
  LatLng? _selectedLocation;  // Define _selectedLocation in the scope of the class

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController!.animateCamera(
      CameraUpdate.newLatLng(
        LatLng(widget.initialLocation.latitude ?? 0.0, widget.initialLocation.longitude ?? 0.0),
      ),
    );
  }

  @override
  void dispose() {
    mapController?.dispose(); // Use null-aware call
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map"),
        // Other AppBar properties if needed
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.initialLocation.latitude ?? 0.0, widget.initialLocation.longitude ?? 0.0),
          zoom: 14.0,
        ),
        markers: {
          if (_selectedLocation != null)
            Marker(
              markerId: MarkerId('selectedLocation'),
              position: _selectedLocation!,
            ),
        },
        onTap: (LatLng location) {
          setState(() {
            _selectedLocation = location;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        LatLng userLocation = _selectedLocation ?? LatLng(widget.initialLocation.latitude ?? 0.0, widget.initialLocation.longitude ?? 0.0);
        Event? closestEvent = _findClosestEvent(userLocation, events);

        if (closestEvent != null) {
          if (closestEvent.id == 'Planbiz') {
            NavigatorService.pushNamed(AppRoutes.planBizScreen);}
          if (closestEvent.id == 'ThinkBiz') {
            NavigatorService.pushNamed(AppRoutes.thinkBizScreen);}
          if (closestEvent.id == 'TechConnect') {
            NavigatorService.pushNamed(AppRoutes.techconnectScreen);}
          if (closestEvent.id == 'OpenConference') {
            NavigatorService.pushNamed(AppRoutes.openConferenceScreen);}
          if (closestEvent.id == 'PartyAtNtua') {
            NavigatorService.pushNamed(AppRoutes.partyAtNtuaScreen);}
          if (closestEvent.id == 'Pangea') {
            NavigatorService.pushNamed(AppRoutes.tedxauebPangeaMainEventScreen);}
        }
      },

        child: Icon(Icons.check),
      ),
    );
  }
}

Event? _findClosestEvent(LatLng userLocation, List<Event> events) {
  Event? closestEvent;
  double closestDistance = double.maxFinite;

  for (var event in events) {
    double distance = _calculateDistance(userLocation, event.location);
    if (distance < closestDistance) {
      closestDistance = distance;
      closestEvent = event;
    }
  }

  return closestEvent;
}

// Basic distance calculation between two LatLng points
double _calculateDistance(LatLng loc1, LatLng loc2) {
  var p = 0.017453292519943295;
  var c = cos;
  var a = 0.5 - c((loc2.latitude - loc1.latitude) * p)/2 +
      c(loc1.latitude * p) * c(loc2.latitude * p) *
          (1 - c((loc2.longitude - loc1.longitude) * p))/2;
  return 12742 * asin(sqrt(a)); // 2 * R; R = 6371 km
}


class Event {
  final String id;
  final LatLng location;
  final route;

  Event({required this.id, required this.location, required this.route});
}

List<Event> events = [
  Event(id: "ThinkBiz", location: LatLng(37.992599838659395, 23.678697449231706),route: AppRoutes.thinkBizScreen), // Sample locations
  Event(id: "TechConnect", location: LatLng(37.981380746011354, 23.716199772351473),route: AppRoutes.techconnectScreen),
  Event(id: "PlanBiz", location: LatLng(38.05603036020914, 23.808855879667718),route: AppRoutes.planBizScreen),
  Event(id: "OpenConference", location: LatLng(37.981166791054335, 23.754087568110442),route: AppRoutes.openConferenceScreen),
  Event(id: "PartyAtNtua", location: LatLng(37.97804332900332, 23.76977205941689),route: AppRoutes.partyAtNtuaScreen),
  Event(id: "Pangea", location: LatLng(37.99337089706954, 23.73054721728186),route: AppRoutes.tedxauebPangeaMainEventScreen),
];
