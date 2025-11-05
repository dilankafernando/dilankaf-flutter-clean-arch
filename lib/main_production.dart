// Copyright (c) 2024, Dilanka Fernando
// https://github.com/dilankaf/flutter-mobile-clean-architecture-template
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_clean_arch/app/app.dart';
import 'package:flutter_clean_arch/bootstrap.dart';
import 'package:flutter_clean_arch/core/utils/constants.dart';

void main() {
  bootstrap(() => const App(), environment: Environment.production);
}
