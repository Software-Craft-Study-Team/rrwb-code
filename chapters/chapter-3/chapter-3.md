## Chapter 3 - Refactoring Step by Step
### The Refactoring Environment

- Be sure we have:
  - Team/Partner
  - Tests
  - Testing Framework
  - CRC (Class, Responsibilities, Collaborators) Cards/UML Sketches
  - Configuration Management/Version Control
  - IDE

### Inside a Refactoring
- Refactoring is a step-by-step process - refactorings are _behavior-preserving_ transformations, whereas the steps in any specific refactoring may temporarily break the code

- Example: Hide Delegate - encapsulate the path to an object, so that clients are decoupled from the implementation details of how to reach it
  ```ruby
    class Rectangle
      attr_reader :top_left, :width, :height
    end
    
    class Point
      attr_reader :x, :y
    end 
  ```
  
### Refactoring steps:
  1. Create a simple delegating method on the server
  2. For each client of the delegate:
     1. Adjust the client to call the server's new method
     2. test
  3. If no client needs toa ccess the delegate any longer:
     1. remove the server's accessor for the delegate
     2. Test

#### Step 1: Create delegating method
```ruby
class Rectangle
  def left_edge
    @top_left.x
  end
end
```
#### Step 2: Adjust every client
```ruby
class TranslationTest < Test::Unit::TestCase
  def test_translate_should_move_left_edge
    rect = Rectangle.new(Point.new(6.3, 5.0), 2.0, 2.0)
    rect.translate(-3.5, 1.0)
    assert_equal(2.8, rect.left_edge) # changed from #top_left.x
  end
end
```
#### Step 3: Test after adjusting each call
Run the tests and make sure they pass - we've reached a "base" or "safe point"
#### Step 4: Remove the server's accessor
```ruby
class Rectangle
  attr_reader :width, :height # removed :top_left
  
  def left_edge
    @top_left.x
  end
end
```
##### Step 5: Test again
We’ve reached another base, so we run the tests again and commit the code. At this
point we’ve finished applying Hide Delegate.

### Generic Refactoring Micro-Process (parallel change)
1. Check whether the refactoring will run into any problems
2. Introduce a new code element
3. For each thing to migrate:
   1. Migrate one client of the old element to use the new one
   2. Test
4. Delete the old element
5. Test

### Check that something is true
* Prove the proposed refactoring is safe
* Look for any interferences
* Assertions (what does this mean?)

### Introduce a new element
* Add new unused field, method or class
* Introduce new mechanism delegating to the old
* Introduce new, independent mechanism
* Copy code from old to new

### For each
* Iterate over everywhere the code is used

### Migrate
* Move a user of the old mechanism to the new one
* Replace by its equivalent
* Adjust to a new context
* Rename meaningfully
* Swap two independent things (what?)
* Propagate a constant (what?)

### Delete
* Delete dead code
* Delete code with no effects (empty methods/classes)
* Deprecate

### Test
