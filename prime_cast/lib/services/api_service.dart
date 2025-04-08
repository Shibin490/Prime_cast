class ApiService {
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay
    return 'Fetched data from API';
  }
}
