
void main(List<String> args) {

  //Binary Infix Operator: works in between two values
  const age = 50;
  print(age + 20);
  print(age - 20);
  print(age * 5);
  print(age / 5);
  print(age ~/ 5);
  print(age % 6); //gives the remainder
  print(age == 20); // compares two value and check if they are equal
  print(age != 20); // it operates as the following order: 1) check age == 20 2) gives the result(false) 3) negates that result(true)

  print(age > 20);
  print(age <= 20);


   // bitwise infix operators
   print(age & 20); //bitwise AND 1 & 1 =1, 0 & 1 = 0, 1 & 0 = 0, 0 & 0 = 0
   /// 0000 1010
   /// 1011 1000
   /// 0000 1000 (result)
   
   print(age | 20); //bitwise OR 1 | 1 = 1, 1 | 0 = 1, 0 | 1 = 1, 0 | 0 = 1
   /// 0000 1010
   /// 1011 1000
   /// 1011 1010 (result)
   
   print(age ^ 20); //bitwise XOR 1 ^ 1 = 0, 1 ^ 0 = 1, 0 ^ 1 = 1, 0 ^ 0 = 0
   /// 0000 1010
   /// 1011 1000
   /// 1011 0010 (result)

   print(age << 20); //bitwise left shit
   print(age >> 20); //bitwise right shit
   /// 0110 0011
   /// shift left by 1
   /// 1100 0110 (result)
}
