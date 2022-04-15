import Debug "mo:base/Debug"
// Naming convention:
// line must end with a semicolon
// for className use UpperCamelCase
// for variable name use lowerCamelCase

actor DBank {
  var currentValue = 100; // To define mutabble variable
  currentValue := 300;  // Assigning new value

  let id = 12123231; // To define immutable variable

  Debug.print("Hello World!");  // Debug.print is a function which print directly to console only text.
  Debug.print(debug_show(currentValue));  // To print any Nat i.e, Natural Number in Motoko we need debug_show function.

  // Everytime to print on console we need to use dfx deploy command.

  public func topUp (amount: Nat) {  // Function declaration
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  // topUp();  // Function call
}