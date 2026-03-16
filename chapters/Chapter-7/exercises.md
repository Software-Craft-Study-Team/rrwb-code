# Exercise 7.1: Dead Code (Challenging)

Find an application or project that has undergone changes in requirements or design.
Odds are good that it now contains dead code.

A. Find some dead code by reading through and simulating suspect areas by hand.
How confident are you that this code is indeed redundant?

We looked at `feedbin`. We tried GPT but it reached the context window limit before it saw the whole project so gave an
incorrect answer. We next tried the RubyMine code inspections and it identified some dead code, such as this test:

ImageCrawler::Processor::CropperTest#test_should_crop

We are quite confident that it is dead code because a method of the same name appears twice, so the second one overrides
the first.

Another piece of dead code is an unused parameter in AppStoreNotificationProcessor#plan. RubyMine finds 168 unused
parameters/variables. We can be quite sure of many of these because the scope is small.

B. If you don’t have them already, write thorough tests for all clients of this suspect
code. Are you now more confident that the code can be removed?

We don't really want to write a test for a test. We think that writing the missing tests (if any) would give us more
confidence.

C. Find an appropriate code coverage tool—such as Rcov (http://rubyforge.
org/projects/rcov/)—and use it to analyze your test run. How confident are
you now that this suspect code is redundant?

I'm (Andrzej) am unable to run the tests in this project (need some extra setup). However, we think that it would
increase our confidence. We would also gain more familiarity with the codebase. We have less confidence in the IDE
inspections.

D. What does the coverage tool tell you about libraries and gems loaded by your
code? Is that a problem? If yours is a Rails application, did you make use of all of
the scaffolding provided? Is that a problem?

E. Modify the suspect code so that it is obviously broken, perhaps by having it raise
an exception. (If you have heckle available, run it on your test suite.) Do you get
any surprises when you rerun the tests? If not, delete the dead code.

F. Which of the preceding approaches worked best in your application? Which
gave the best return on the effort involved? Repeat the exercise by finding an-
other chunk of dead code, this time focusing on the technique(s) that gave the
most benefit.


# Exercise 7.2: Today versus Tomorrow

There are arguments for and against Speculative Generality being a smell. We can
caricature them as follows:

* Some agile development methods, notably Extreme Programming, argue that
  Speculative Generality is a smell, and that you aren’t going to need it. That is,
  make your code meet today’s requirements, and don’t try to anticipate which way
  tomorrow’s requirements will go. (Thus an agile team is more likely to evolve a
  framework from an application than to build a framework and use it to create an
  application.)
* Another approach is to design for flexibility or to design for generality. This means
  that you should fully flesh out your classes based on the expected requirements.

When refactoring code you will often need to decide which approach is better for the
particular case you’re currently dealing with.

A. What are the forces that make it better to design for only today’s requirements today?
* The desire not to do redundant work
* Wanting to minimise complexity
* Needing to respond to unexpected change

B. What are the forces that make it better to design for tomorrow’s requirements today?
* The desire to make change easy
* If tomorrow's requirements are clear today