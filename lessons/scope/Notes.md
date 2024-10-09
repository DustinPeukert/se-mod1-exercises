Scope Notes:

- Scope is quite simply, access/context

- When we create a method we create method scope
 - The area outside of our methods is considered our Global scope

Global scope has access to variables that are not within:
  - a class
  - a method
  - a block

Method scope only has access to variables inside of the method itself

- Instance method variables can jump scop, but only within its own class
- They will not produce terminal errors, only logic errors. 
- An instance variable that has not been defined but it being called will return 'nil'

Keywords that begin and end scopes:
- Method: def end
- Class:  class end
- Global: none