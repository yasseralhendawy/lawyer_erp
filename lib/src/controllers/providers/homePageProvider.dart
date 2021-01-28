import 'package:flutter/cupertino.dart';
import 'package:lawyer_erp/src/ui/home_page_screens/clients_screen.dart';
import 'package:lawyer_erp/src/ui/home_page_screens/homeLayout.dart';
import 'package:lawyer_erp/src/ui/home_page_screens/hr_screen.dart';
import 'package:lawyer_erp/src/ui/home_page_screens/services_screen.dart';
import 'package:lawyer_erp/src/ui/home_page_screens/supportScreen.dart';

class HomePageProvider extends ChangeNotifier {
  bool _homeScreen;
  bool _servicesScreen;
  bool _hrScreen;
  bool _ourClientsScreen;
  bool _supportScreen;

  HomePageProvider() {
    this._homeScreen = true;
    this._servicesScreen = false;
    this._hrScreen = false;
    this._ourClientsScreen = false;
    this._supportScreen = false;
  }

  bool get homeScreen => _homeScreen;

  bool get servicesScreen => _servicesScreen;

  bool get hrScreen => _hrScreen;

  bool get ourClientsScreen => _ourClientsScreen;

  bool get supportScreen => _supportScreen;

  void setHomeScreen() {
    _homeScreen = true;
    _hrScreen = false;
    _ourClientsScreen = false;
    _servicesScreen = false;
    _supportScreen = false;
    notifyListeners();
  }

  void setServicesScreen() {
    _homeScreen = false;
    _hrScreen = false;
    _ourClientsScreen = false;
    _servicesScreen = true;
    _supportScreen = false;
    notifyListeners();
  }

  void setHRScreen() {
    _homeScreen = false;
    _hrScreen = true;
    _ourClientsScreen = false;
    _servicesScreen = false;
    _supportScreen = false;
    notifyListeners();
  }

  void setClientsScreen() {
    _homeScreen = false;
    _hrScreen = false;
    _ourClientsScreen = true;
    _servicesScreen = false;
    _supportScreen = false;
    notifyListeners();
  }

  void setSupportScreen() {
    _homeScreen = false;
    _hrScreen = false;
    _ourClientsScreen = false;
    _servicesScreen = false;
    _supportScreen = true;
    notifyListeners();
  }

  Widget getTheRightPage() {
    if (_homeScreen == true) {
      return HomePageLayout();
    }
    if (_servicesScreen == true) {
      return ServicesScreen();
    }
    if (_hrScreen == true) {
      return HRScreen();
    }
    if (_ourClientsScreen == true) {
      return ClientsScreen();
    }
    if (_supportScreen == true) {
      return SupportScreen();
    }

    return Container();
  }
}
