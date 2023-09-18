// Implementing Comparable on Enumerations

void main(List<String> args) {
  print(TeslaCars.values);
  print([...TeslaCars.values]..sort());
  print(TeslaCars.modelX.compareTo(TeslaCars
      .modelS)); //The compareTo method is used to determine the relative ordering of the two values.
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelY(weightInKg: 2.2),
  modelX(weightInKg: 4.5),
  model3(weightInKg: 1.8),
  modelS(weightInKg: 3.0);

  final double weightInKg;

  const TeslaCars({
    required this.weightInKg,
  });

  @override
  int compareTo(TeslaCars other) => weightInKg.compareTo(
        other.weightInKg,
      );
}
