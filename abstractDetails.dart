



//Abstract Class:"বিমূর্ত(রূপ বা আকার নেই)" শব্দের অর্থ হলো যে কিছু স্থির নয় এবং সামগ্রী দ্বারা বাহ্যিকভাবে প্রদর্শন করা যায় না

/*What does it mean?
When you create an abstract class in Dart and it has abstract methods (methods without a body),
but normal method (you can use body) then:   //vvi
👉 Any class (subclass) that extends this abstract class must 
   write code (implement) for those methods. //vvi

Imagine an abstract class is a template or a promise — it says:
"Hey! I’m not going to do the work now, but anyone who uses me (extends me) must do it."  //vvi



abstract class Animal {
  void makeSound();                    // abstract method (no body)

  void breathe() {                     // normal method (with body)
    print("Animal is breathing...");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Bark! Bark!");
  }
}

void main() {
  Dog dog = Dog();
  dog.makeSound();  // ✅ from subclass
  dog.breathe();    // ✅ inherited from abstract class
}


Here:
Animal is an abstract class with a method makeSound() but no body.
Dog is a subclass.
Dart says: “Dog, if you want to be an Animal, you must tell me what makeSound() does!”   //vvi

Why is this useful?
It’s useful when you want to create a general rule, but let each child class decide 
how to do the work.   //vvi

*/









//Construtor:

/*Why use a constructor in an abstract class?   //কনস্ট্রাক্টর প্যারেন্ট ক্লাসে মান পাস করতে সাহায্য করে।     // vvi
Because when a subclass extends that abstract class, the constructor helps pass 
values to the parent class.
It’s like giving your child class a “shortcut” to send values to the parent.
*/

abstract class Person {
  String name;
  int age;

  // Constructor in abstract class
  Person(this.name, this.age);

  // Abstract method
  void displayInfo();
}

// Subclass
class Student extends Person {
  String schoolName;

  // Constructor: sends name and age to Person (super)  ////কনস্ট্রাক্টর প্যারেন্ট ক্লাসে মান পাস করতে সাহায্য করে।
  Student(String name, int age, this.schoolName) : super(name, age);
  // This line calls the abstract class's constructor to set name and age.   //vvi

  // Implementing abstract method
  @override
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("School: $schoolName");
  }
}

void main() {
  // ❌ This is not allowed:
  // Person p = Person("Kabir", 23); // ERROR: Cannot instantiate abstract class

  // ✅ This is allowed:
  Student student = Student("Kabir", 23, "Sachna Bazar H.S.");
  student.displayInfo();
}





//Super keyword
/*
What is super in Dart?
super is a keyword used in Dart to refer to the parent class (superclass).
You use it to access or call the parent’s:

1.constructor
2.methods
3.properties (if needed)

//Super key word is always used to reach up to the parent class
//সুপার ব্যবহার করলে পেরেন্ট ক্লাস এর properties আর ইনিশিয়াল করে নেয়া লাগে না 
//প্যারেন্ট ক্লাস এর properties গুলু ডিটেক্ট ব্যবহার করতে পারি here subclass person not need to initial (name and age)

🧪 Example 1: Calling parent constructor
class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

class Student extends Person {
  String schoolName;
  Student(String name, int age, this.schoolName) : super(name, age);
}


🧪 Example 2: Calling parent method using super
class Person {
  void greet() {
    print("Hello from Person!");
  }
}

class Student extends Person {
  void greetStudent() {
    super.greet(); // calling parent's method
    print("Hello from Student!");
  }
}

🧪 Example 3: Accessing parent variable
class Person {
  String role = "Human";
}

class Student extends Person {
  void showRole() {
    print(super.role); // accessing parent's variable
  }
}

*/



