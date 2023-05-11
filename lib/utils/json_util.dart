int stringToInt(String number) => int.parse(number);

String stringFromInt(int number) => number.toString();

double stringToDouble(String number) => double.parse(number);

String stringFromDouble(double number) => number.toString();

bool stringToBool(String boolean) => boolean == '1';

String stringFromBool(bool boolean) => boolean ? '1' : '0';
