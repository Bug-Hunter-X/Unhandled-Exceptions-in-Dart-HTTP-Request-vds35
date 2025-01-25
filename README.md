# Unhandled Exceptions in Dart HTTP Request

This repository demonstrates a common error in Dart code that involves making HTTP requests and handling potential exceptions.

The `bug.dart` file contains code that fetches data from an API endpoint but lacks robust error handling. It directly uses `jsonDecode` without checking the response status code or handling potential JSON decoding errors.

The `bugSolution.dart` file shows how to fix the issue by properly handling the response status code, validating the JSON response format, and implementing better exception handling using `try-catch` blocks and providing proper feedback mechanisms.