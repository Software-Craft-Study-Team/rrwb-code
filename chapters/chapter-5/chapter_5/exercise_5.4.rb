# Exercise 5.4: Smells and Refactorings
# Consider these smells:
# A. Comments
# B. Large Module
# C. Long Method
# D. Long Parameter List
# For each refactoring in the following list, write the letter for the smell(s) it might
# help cure:
# B Duplicate Observed Data (it's concept that was taking away in the 2nd ed of refactoring in Martin Fowler). 
# https://www.refactoring.com/catalog/duplicateObservedData.html. Team definition: This refactoring extracts another module/class that take some of the resposibilities that the Large Module has (before it was only one class `IntervalWindow` after refactoring we have `IntervalWindow` and `Interval`)
# B Extract Class (https://refactoring.com/catalog/extractClass.html)
# A, C Extract Method (https://refactoring.com/catalog/extractFunction.html)
# B Extract Subclass (replaced in 2nd edition to Replace Type Code with Subclasses https://martinfowler.com/articles/refactoring-2nd-changes.html)
# A Introduce Assertion (https://refactoring.com/catalog/introduceAssertion.html) in Ruby we may raise exception (guard clause), assertion is more on communication, it's different from validating data when coming from outside rather than internal control flow.
# Type | Purpose | When it fails | Error handling 
# ValidationProtect against bad external data | Expected (users make mistakes) | Show user-friendly error message | 
# AssertionCatch programming bugs | Unexpected (logic error in code) | Log, alert developers, maybe crash

# D Introduce Parameter Object (https://refactoring.com/catalog/introduceParameterObject.html) Data Clump smell, some params may be part of a new Object, so consider creating a new Object and pass it around
# D Preserve Whole Object (https://refactoring.com/catalog/preserveWholeObject.html) instead of passing variables, send the whole object, potentially a primitive obsession code smell
# A Rename Method
# D Replace Parameter with Method (https://refactoring.com/catalog/replaceParameterWithQuery.html)

# difference of preserveWholeObject and  replaceParameterWithQuery?

https://claude.ai/share/b04fea24-35ad-4f71-b873-2aa84a915448



