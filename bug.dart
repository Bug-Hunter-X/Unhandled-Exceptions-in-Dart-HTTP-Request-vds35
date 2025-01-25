```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's where the bug is: Assuming JSON response, without checking.
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    //  No proper error handling or fallback mechanism
  }
}
```