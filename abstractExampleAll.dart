
//if you have any doubt can see dart turtorial(vvi:2,3)

// //example 1:
/*In this example below, there is an abstract class Vehicle with two abstract methods start() and stop(). 
The subclasses Car and Bike implement the abstract methods and override them to print the message.
*/

// abstract class Vehicle{
//   start();
//   stop();
// }
// class Car extends Vehicle{
//   @override
//   start() {
//    print("This is car Start:");
//   }
//   @override
//   stop() {
//     print("This is car stop ");
//   }

// }
// class Bike extends Vehicle{

//    @override
//   start() {
//    print("This is bike Start:");
//   }
//   @override
//   stop() {
//     print("This is bike stop ");
//   }

// }

// void main(){
//   Car car=Car();
//   car.start();
//   car.stop();
//   Bike bike=Bike();
//   bike.start();
//   bike.stop();
// }





// //example2:
/*In this example below, there is an abstract class Shape with one abstract method area() and 
two subclasses Rectangle and Triangle. The subclasses implement the area() method and override 
it to calculate the area of the rectangle and triangle, respectively.
*/

// abstract class Shape{
//   double length,width;      //not null-able type
//   //double? length,width;   //error! null-able type can be null but it's not possilbe bcause you give the value
//   Shape(this.length,this.width);
//   void area();
// }

// class Rectangle extends Shape{
//   Rectangle(double length,double width):super(length,width);
  
//   @override
//   void area() {
//     print("Rectangle are is ${length*width}");
//   }
// }

// class Triangle extends Shape{
//   Triangle(double length,double width):super(length,width);
//   @override
//   void area() {
//     print("Rectangle are is ${.5*length*width}");
//   }
  
// }

// void main(){
//   Rectangle rectangle=Rectangle(4, 5);
//   rectangle.area();
//   Triangle triangle=Triangle(4, 5);
//   triangle.area();
// }




// //example3:
/*In this example below, there is an abstract class Bank with a constructor which takes two 
parameters name and rate. There is an abstract method interest(). The subclasses SBI and ICICI 
implement the abstract method and override it to print the interest rate.
*/

// abstract class Bank{
//   String? name;
//   double? rate;
//   Bank(this.name,this.rate);
//   interest();
//   void display(){
//     print("Bank name:$name");
//   }
// }
// class SBI extends Bank{
//   SBI(String name,double rate):super(name,rate);
//   @override
//   interest(){
//     print("The rate if interest of SBI is: $rate");

//   }
// }
// class ICICI extends Bank{
//     ICICI(String name,double rate):super(name,rate);

//   @override
//   interest(){
//     print("The rate if interest of ICICI is: $rate");

//   }
// }

// void main(){
//   SBI sbi=SBI("KabirBank", 233);
//   sbi.display();
//   sbi.interest();
//   ICICI icici=ICICI("RazaulBank", 133);
//   icici.display();
//   icici.interest();
// }



