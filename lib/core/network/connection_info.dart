import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfo implements INetworkInfo {
  NetworkInfo();

  @override
  Future<bool> get isConnected => InternetConnectionChecker().hasConnection;
}
