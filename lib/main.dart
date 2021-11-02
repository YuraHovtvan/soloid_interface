void main() {
  Rabbit rabbit = Rabbit('Rabbit')
    ..showName()
    ..eatGross();
  Lion lion = Lion('Lion')
    ..showName()
    ..eatMeat();
  Woman woman = Woman('Anna')
    ..showName()
    ..eatGross()
    ..eatMeat();
}

mixin MeatEating {
  void eatMeat() {
    print('Animal eat meat');
  }
}

mixin GrossEating {
  void eatGross() {
    print('Animal eat gross');
  }
}

abstract class Animal {
  String name;
  Animal(this.name);
  void showName() {
    print(name);
  }
}

class Rabbit extends Animal with GrossEating {
  Rabbit(String name) : super(name);
}

class Lion extends Animal with MeatEating {
  Lion(String name) : super(name);
}

class Woman extends Animal with GrossEating, MeatEating {
  Woman(String name) : super(name);
}
