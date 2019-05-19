class StringIds {
  static const appName = "appName";
  static const home = "home";
  static const String BaseWidgets = "基本组件";
  static const String HttpRequest = "网络请求";
  static const List<String> HomeDataString = [BaseWidgets, HttpRequest];
}

Map<String, Map<String, String>> localizedSampleValues = {
  "zh": {
    StringIds.appName: "Flutter 学习",
    StringIds.home: "首页",
  },
  "en": {StringIds.appName: "Flutter Study", StringIds.home: "HomePage"}
};



Map<String, Map<String, Map<String, String>>> localizedValues = {
  "zh": {
    "CN": {
      StringIds.appName: "Flutter 学习",
      StringIds.home: "首页",
    },
    "HK": {}
  },
  "en": {
    "US": {StringIds.appName: "Flutter Study", StringIds.home: "HomePage"},
    "UK": {StringIds.appName: "Flutter Study", StringIds.home: "HomePage"}
  }
};
