import 'package:function_as_first_class_object/function_as_first_class_object.dart' as function_as_first_class_object;

void main(List<String> arguments) {
 var greet =sayHello;
 greet();


 int result=calculate(add, 5,3) ;
 int result1=calculate(sub, 5,3) ;
 print(result);
 print(result1);


 var addCalculation=calculate1("add");
 var result5=addCalculation(5,3);
 print("result 5 is :$result5");


 List<Function> functionList=[sayHello1,sayGoodBye];

 functionList.forEach((element)=> element());










}

//assign to variables
 void sayHello()
 {



  print("Hello");



 }

 //passing function as arguments

int add (int a, int b)
{

 return a+b;
}
int sub(int a, int b)
{
 return a-b;


}
int calculate( int Function(int ,int) operation,int a,int b)

{
return operation(a,b);



}


//return function from a function

Function calculate1(String operation)
{
 if(operation=="add")
 {
  return (int a, int b)=> a+b;
 }
 else if(operation=="sub")
 {

  return (int a, int b)=> a-b;
 }

 return (int a,int b)=>a*b;



}

//storing functions in a data  struckture
void sayHello1()
{

 print("Hello");
}
void sayGoodBye()
{

 print("Good Bye");

}








