# Exercise 6.1: Names
Classify these method names as Type Embedded in Name, Uncommunicative
Name, or OK.

* ___ add_item(item)
  * Type Embedded in Name
* ___ do_it
  * Uncommunicative Name
* ___ get_nodes_array
  * Type Embedded in Name
* ___ get_data
  * Uncommunicative Name
* ___ make_it
  * Uncommunicative Name
* ___ multiply_int_int(int1, int2)
  * Type Embedded in Name
* ___ process_item
  * Uncommunicative Name
* ___ sort
  * OK
* ___ spin
  * Uncommunicative Name

# Exercise 6.2: Critique the Names
Which name would you expect to use?

A. To empty a window (onscreen)
  window.clear ***
  window.wash
  window.erase
  window.delete_all *

B. For a stack
  stack.add
  stack.insert
  stack.push ***
  stack.add_to_front

C. For an editor (to get rid of the selected text)
  selection.cut * - implies paste?
  selection.delete *
  selection.clear * - clear *everything*, multiple things?
  selection.erase *

D. As part of a file comparison program
  line1.compare(line2) - return what's missing? 
  line1.eql?(line2) * - equality check
  line1.identical_to(line2)
  line1.matches(line2)

# Exercise 6.3: Superclasses
In each of the following scenarios you have a group of classes, and you want to intro-
duce a superclass for them. What do you call it?

A. Car, Boat, Train - Vehicle - it depends on the domain? Booking? Sales? Logistics?

B. LaserPrinter, InkjetPrinter, NetworkPrinter - Printer - depends, again 🙂

# Exercise 6.4: Method Names

A. You have classes `Schedule` and `Course`, and a method named `schedule.add_
course(course)`. Later, you introduce a class `Syllabus`—a collection of `Course`s
that behaves just like a single `Course`. So now `schedule.add_course(thing)` can
add a `Syllabus` too. Is that a problem?
- Yes, because we are using a method that "adds courses" to add something that is not a course
- "Syllabus" is not the right word - how about "Path"? A course has a syllabus!

B. During development, you have classes Graph, Point, and Edge (in the mathemati-
cal sense) and a method `graph.add(point)`. Now you want to be able to add
edges to a graph too. What new method(s) might you introduce to accomplish
that?

`graph.add(point: aPoint)`
`graph.add(edge: anEdge)`

`graph.add_edge_by_coordinates(graph.add(point1), graph.add(point2))`