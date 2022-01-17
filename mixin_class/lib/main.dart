// Objective
// Adding features to a class : Mixins
// Mixins are a way of reusing a class's code in multiple  class hierarchies.
// we can use mixin where a large program with lot of class and need to share their properties and behaviours

// In object-oriented programming languages, a mixin (or mix-in) is a class that contains methods for use by other classes without having to be the parent class of those other classes.

void main() {
//   Animal().move();

  // Inheriting  class method and overriding it
  Fish().move();

  Bird().move();

  Duck().swim();

  Duck().fly();
}

class Animal {
  void move() {
    print('changed position');
  }
}

class Fish extends Animal with CanSwim {}

class Bird extends Animal {
  @override
  void move() {
    super.move();
    print('by flying');
  }
}

mixin CanSwim {
  void swim() {
    print('Changing position by swimming');
  }
}

mixin CanFly {
  void fly() {
    print('Changing position by flying');
  }
}

class Duck extends Animal with CanSwim, CanFly {}
