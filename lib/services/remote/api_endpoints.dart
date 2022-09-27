class APIEndpoints {
  static const String baseUrl = '';
  // "https://c2qm1klaj6.execute-api.ap-southeast-2.amazonaws.com/prod/";

  static const String getUsers = baseUrl + "v1/users";

  static const String postLogin = baseUrl + "v1/auth/login";

  static const String placeApi =
      "https://maps.googleapis.com/maps/api/place/details/";
  static const String geoCoding =
      "https://maps.googleapis.com/maps/api/geocode/";
  static const String generateURL = baseUrl + "v1/files/upload-url";
}
