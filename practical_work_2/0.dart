void main (){
     
    Employee bob = Employee("Bob", "Google");
    bob.display();  // Name: Bob
    bob.work();     // Works in Google
} 
 
class Person{
  
    String name;
    Person(this.name);
    void display(){
        print("Name: $name");
    }
}
mixin Worker{
    String company = "";
    void work(){
        print("Work in $company");
    }
}
class Employee extends Person with Worker{
     
    Employee(name, comp) : super(name){
     
        company = comp; // обращаемся к полю company, определенному в миксине Worker
    }
}