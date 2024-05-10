import 'dart:developer';

class Logger {
  
  static void write(String text, {bool isError = false}) {
    print('** $text [$isError]');
  }

  static void printWarning(String text) {
    log('\x1B[33m$text\x1B[0m');
  }

  static void printError(String text) {
    log('\x1B[31m$text\x1B[0m');
  }

  static void printInfo(String text) {
    log('\x1B[34m$text\x1B[0m');
  }

  static void printSuccess(String text) {
    log('\x1B[32m$text\x1B[0m');
  }  
}