// Initializing Late Final Variables

void main(List<String> args) {
  late final bool isTeenager;
  const int age = 12;

  if (age >= 13 && age <= 19) {
    isTeenager = true;
  } else if (age < 13) {
    isTeenager = false;
  }

  try {
    isTeenager = false;
    print('isTeenager = $isTeenager');
  } catch (e) {
    print(e);
  }
}
