import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../generated/l10n.dart';

extension DateTimeExt on DateTime {
  String get dateString {
    final format = DateFormat('yyyy-MM-dd');
    return format.format(this);
  }

  String get toHour {
    final format = DateFormat('HH:mm');
    return format.format(this);
  }

  String get toDay {
    final format = DateFormat('yyyy-MM-dd');
    return format.format(this);
  }

  bool isTime(DateTime value) {
    return year == value.year &&
        month == value.month &&
        day == value.day &&
        hour == value.hour &&
        minute == value.minute;
  }

  bool isDate(DateTime value) {
    return year == value.year && month == value.month && day == value.day;
  }
}

extension StringExt on String {

  String? get toDOB {
    /// Format DOB: 2002-04-11
    final format = DateFormat('yyyy-MM-dd');
    final formatDisplay = DateFormat('yy-MM-dd');

    try {
      final date = format.parse(this);
      return formatDisplay.format(date).replaceAll('-', '');
    } catch (_) {
      return null;
    }
  }

  DateTime? get toDate {
    try {
      final format = DateFormat('yyyy-MM-dd');
      return format.parse(this);
    } catch (_) {
      return null;
    }
  }

  DateTime? get toHour {
    try {
      final format = DateFormat('HH:mm');
      return format.parse(this);
    } catch (_) {
      return null;
    }
  }

  DateTime? get toDateTime {
    if (isEmpty) return null;

    try {
      final format = DateFormat('yyyy-MM-dd HH:mm:ss');
      return format.parse(this);
    } catch (_) {
      return null;
    }
  }

  String get formatDateTime {
    try {
      var date = DateTime.parse(this);
      var now = DateTime.now();
      var difference = now.difference(date);
      if (difference.inDays > 1) {
        return DateFormat('dd-MM-yyyy HH:mm').format(date);
      } else if (difference.inDays == 1) {
        return '${difference.inDays} day(s) ago';
      } else if (difference.inHours >= 1) {
        return '${difference.inHours} hour(s) ago';
      } else if (difference.inMinutes >= 1) {
        return '${difference.inMinutes} minute(s) ago';
      } else if (difference.inSeconds >= 1) {
        return '${difference.inSeconds} second(s) ago';
      } else {
        return 'just now';
      }
    } on Exception catch (_) {
      return this;
    }
  }

  String get toCapitalized =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';

  String get toTitleCase {
    return replaceAll(RegExp(' +'), ' ')
        .split(" ")
        .map((str) => str.toCapitalized)
        .join(" ");
  }

  String get mask {
    int maskLen = length - 4;
    if (maskLen <= 0) {
      return this;
    }
    return "X".replaceAll(RegExp(r'maskLen'), 'x') + substring(maskLen);
  }
}

extension FutureExtension<T> on Future<T> {
  FutureBuilder<T> build<U>({
    required Widget Function(T data) onSuccess,
    Widget? onLoading,
    Widget? onNotFound,
    Widget? onError,
    T? initialData,
  }) {
    return FutureBuilder<T>(
      future: this,
      initialData: initialData,
      builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
          case ConnectionState.active:
            return Center(
              child: onLoading ?? const CircularProgressIndicator(),
            );
          case ConnectionState.done:
            if (snapshot.hasData) {
              return onSuccess(snapshot.data!);
            } else {
              return Center(child: onError ?? const Text('An error occurred.'));
            }
          default:
            return Center(child: onNotFound ?? const Text('Not Found.'));
        }
      },
    );
  }

  FutureBuilder<T> builderNoLoading<U>({
    required Widget Function(T data) onSuccess,
    Widget? onLoading,
    Widget? onNotFound,
    Widget? onError,
    T? initialData,
  }) {
    return build(
      initialData: initialData,
      onSuccess: onSuccess,
      onNotFound: onNotFound,
      onError: onError,
      onLoading: onLoading,
    );
  }
}

extension Extension on double {
  double subDouble(int n) => double.parse(toStringAsFixed(n));
}
