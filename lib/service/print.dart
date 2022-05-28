import 'package:flutter/foundation.dart';
import 'package:general/signature.dart';

/// --------------------------
///
///
///
///
/// @author [ Mikagura12 ]
///
///
///
///
/// --------------------------

show(Object data) => kDebugMode
    ? print(data.toString())
    : print('----------------------Release Mode----------------------');
