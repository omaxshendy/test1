import 'package:flutter_riverpod/legacy.dart';

// Optional enhancement 
// Nullable String operator
// final textProvider = StateProvider<String?>((ref) => null);
final textProvider = StateProvider<String>((ref) => "");
