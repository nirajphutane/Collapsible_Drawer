import 'package:flutter/material.dart';

class Abstraction extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Abstraction'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Text(
              '''Data Abstraction is the property by virtue of which only the essential details are displayed to the user.The trivial or the non-essentials units are not displayed to the user. Ex: A car is viewed as a car rather than its individual components.
Data Abstraction may also be defined as the process of identifying only the required characteristics of an object ignoring the irrelevant details. The properties and behaviours of an object differentiate it from other objects of similar type and also help in classifying/grouping the objects.
Consider a real-life example of a man driving a car. The man only knows that pressing the accelerators will increase the speed of car or applying brakes will stop the car but he does not know about how on pressing the accelerator the speed is actually increasing, he does not know about the inner mechanism of the car or the implementation of accelerator, brakes etc in the car. This is what abstraction is. 
In java, abstraction is achieved by interfaces and abstract classes. We can achieve 100% abstraction using interfaces.'''
            ),
          ),
        )
    );
  }
}

class Encapsulation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Encapsulation'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Text(
                '''It is defined as the wrapping up of data under a single unit. It is the mechanism that binds together code and the data it manipulates. Another way to think about encapsulation is, it is a protective shield that prevents the data from being accessed by the code outside this shield. 

Technically in encapsulation, the variables or data of a class is hidden from any other class and can be accessed only through any member function of own class in which they are declared.
As in encapsulation, the data in a class is hidden from other classes, so it is also known as data-hiding.
Encapsulation can be achieved by Declaring all the variables in the class as private and writing public methods in the class to set and get the values of variables.'''
            ),
          ),
        )
    );
  }
}


class Inheritance extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inheritance'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Text(
                '''Inheritance is an important pillar of OOP(Object Oriented Programming). It is the mechanism in java by which one class is allow to inherit the features(fields and methods) of another class. 

Let us discuss some of frequent used important terminologies:

Super Class: The class whose features are inherited is known as superclass(or a base class or a parent class).
Sub Class: The class that inherits the other class is known as subclass(or a derived class, extended class, or child class). The subclass can add its own fields and methods in addition to the superclass fields and methods.
Reusability: Inheritance supports the concept of “reusability”, i.e. when we want to create a new class and there is already a class that includes some of the code that we want, we can derive our new class from the existing class. By doing this, we are reusing the fields and methods of the existing class.'''
            ),
          ),
        )
    );
  }
}


class Polymorphism extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Polymorphism'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Text(
                '''It refers to the ability of OOPs programming languages to differentiate between entities with the same name efficiently. This is done by Java with the help of the signature and declaration of these entities. 

Note: Polymorphism in Java are mainly of 2 types: 

Overloading
Overriding '''
            ),
          ),
        )
    );
  }
}

