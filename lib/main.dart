import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/eds_test_app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: EdsTestApp(),
    ),
  );
}
