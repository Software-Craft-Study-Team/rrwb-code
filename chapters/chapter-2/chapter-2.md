## Chapter 1 (recap)

William started tackling the easiest issue, in this case was the `global variable` and the `dead code`, i think Sandi recommends the same, if we identify more than once code smell, <b>go for the easiest</b>.

Then he mentions the same approach that we faced when refactoring which is, the first change will look uglier but it’s a trade off, we should not stop, but keep refactoring.

Then extracted the svg features into its own module (file: `svg.rb`)

Also created the first `class Sparkline`.

Noticed also that the code has expanded from 40 lines to 100, and from one source file to three all without increasing the script’s functionality.

## Chapter 2

What is refactoring?
“Refactoring is the process of changing a software system in such a way that it does not alter the external behavior of the code yet improves its internal structure.”

Smells usually describe localized problems. Sandi says that code smells is a way to give a name to the code problem and have the same language between the team, same terminology.

The Refactoring Cycle

Start with working, tested code.

While the design can be simplified:
 1. choose the worst smell (Sandi would differ, I think what she wants is to build momentum and avoid getting stuck with a huge task) (maybe the worst is not the most difficult, Sandi would add a new feature with pseudo code and demonstrate the code smell, isolate the thing that varies)
 2. select a refactoring that will address the smell
 3. apply the refactoring
 4. check that the tests still pass


The past cycle reminded my to the Flocking rules we saw in Sandi course (we were about to change the "six-pack" instead of "6 bottles"):

1. Select the things that are most alike
2. Find the smallest difference between them
3. Make the simplest change to remove the difference

a) parse the new code
b) parse and execute it
c) parse, execute and use its results
d) deleted unused code


The trickiest part of the whole process <b>is identifying the smell</b>, and that’s why the bulk of this book emphasizes that topic.

When you start refactoring, it’s best to start with the easy stuff (for example, breaking up large methods or renaming things for clarity). You’ll find that this lets you see and fix the remaining problems more easily.

When are we done?

Kent Beck Simple Design:
1. Passes all the tests.
2. Communicates every intention important to the programmers.
3. Has no duplication of code, or of logic, or of knowledge.
4. Contains no unnecessary code.

A shorthand name for these rules is OAOO, which stands for once and only once. The code has to state something once so that it can pass its tests and communicate the programmer’s understanding and intent. And it should say things only once—that is, with no duplication.

It would be nice if people could find problems easily across a whole system. But humans aren’t so good at that job; local smells work with our tendency to consider only the part we’re looking at right now.

The refactoring step is what makes this process sustainable. Without it the code would quickly degenerate into the legacy spaghetti you’ve no doubt seen on many a software development project.

### Book questions:

A. Justify each of Beck’s rules for simple design.

Kent Beck Simple Design:
1. Passes all the tests.
2. Communicates every intention important to the programmers. (we spend more time on understanding code than writing, it makes it easier to change when we understand the code)
3. Has no duplication of code, or of logic, or of knowledge. (diverge problem, come up with same concepts across the team)
4. Contains no unnecessary code.

B. Why are these rules in priority order? Can you find an example where communication overrides avoidance of duplication?

https://martinfowler.com/bliki/BeckDesignRules.html

NoteLM exercise for chapter 1 (quiz)
https://notebooklm.google.com/notebook/7132538c-48e5-4322-bb78-0afc67ece16e

NoteLM exercise for chapter 2 (quiz)
https://notebooklm.google.com/notebook/285e963b-858c-44bf-aaaf-10083ba90364


