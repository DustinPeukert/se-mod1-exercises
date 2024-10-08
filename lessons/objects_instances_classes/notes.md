Objects, Instances, Classes

Rules:

- File naming: 
    - Class file names should be lowercase, if name of file is 2 or more words
    - Should be separated by an underscore
    - ex: dog.rb, cell_phone.rb, inventory_management_system.rb

- Classes start with class keyword and end with end keyword

- Class names should use upper camel case
    - ex: Dog, Cell_Phone, Inventory_Management_System
    - also called Pascal case

- When creating instances of a class from within a different file you must first "require in" (import) our class file

- In a class, state is stored in instance variables
    - These begin with an '@' sign
    - Usually these instance variables live in the 'initialize' method
    - Instance variables can only be read from within the class
    - In order for instance variables to be read from outside of the class you need to create methods to return those values

- In classes behavior is represented by methods

