Debugging:
- Lesson: https://curriculum.turing.edu/module1/lessons/debugging_techniques

- An error is when our code wont run
- A failure is when our code runs, but doesnt function or return the values we expect

- best thing to do is take hands off keyboard and read error messages and code

- a stack trace is present in errors, it shows all the operations ruby has completed from bottom to top
- the top line is the last thing ruby did and shows where it errored out
- shows which line each operation was performed

- place [require 'pry'; binding.pry] before error line
- you can isolate specific tests using :[linenumber] after the file name during rspec spec/filename

- if you call keyword self in pry session it tells you where your pry session is located

- Sometimes your code may not trigger your pry:
 - Usually caused by placing pry after your error
 - can also be caused by placing pry outside of the method: though this will trigger a new error
 - pry needs to be placed on executable lines of code, space between methods in a class if just dead space
 - binding.pry goes inside of methods or test 'it blocks'