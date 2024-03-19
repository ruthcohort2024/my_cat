// Define an interface
import 'dart:ffi';
import 'dart:io';

abstract class Cat {
  void makeSound();
}

// Create a base class implementing Cat interface
class PersianCat implements Cat {
  // Implementing the interface method
  @override
  void makeSound() {
    print("Meow!");
  }
}

// Create a derived class that inherits from PersianCat
class SiameseCat extends PersianCat {
  // Additional method specific to SiameseCat
  void describeBreed() {
    print("This is a Siamese cat.");
  }

  // Override the makeSound method
  @override
  void makeSound() {
    print("Meow! I'm a Siamese cat.");
  }
}

void main() {
  // Create objects of PersianCat and SiameseCat
  var persianCat = PersianCat();
  var siameseCat = SiameseCat();

  // Make sounds
  persianCat.makeSound();
  siameseCat.makeSound();

  // Describe breed
  siameseCat.describeBreed();

  //create a file object
  File f = File("cat.txt");
  f.writeAsStringSync("hello please help me with cat characteristics.");
  print("write friendliness  and affectionate");

  // Demonstrate the use of a loop
  for (int i = 0; i < 5; i++) {
    print('Loop iteration: $i');
  }
}
