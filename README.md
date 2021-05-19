# Good Software Design
*	S - Single Responsibility Principle
*	O - Open/Closed Principle
*	L - Liskov’s Substitution Principle
*	I - Interface Segregation Principle
*	D - Dependency Inversion Principle

## Single Responsibility Principle
*	Module, class or function should have one and only one responsibility
*	"A class should have only one reason to change”
*	Separate things that change from those that stay the same

## Open/Closed Principle
*	Open for extension
*	Closed for modification
*	Often solved by inheritance
*	Usage of Ruby blocks can be helpful

## Liskov’s Substitution Principle
*	Replaceability of objects
*	Often solved by inheritance or interfaces
*	Ruby provides Duck Typing
*	Design by contract

## Interface Segregation Principle
*	Many client specific interfaces are better than one general purpose interface
*	Keep system decoupled
*	Often solved by interfaces

## Dependency Inversion Principle
*	Depend upon Abstractions. Do not depend upon concretions.
*	Loose coupling
*	Often solved by interfaces
*	Very easy in Ruby through Duck Typing
*	Makes code simplier to test, easie to write fast specs
*	Allows code to be easily moved to libraries (gems)

## YAGNI
*	You Ain’t Gonna Need It
*	Allow software to grow
*	Don’t over-engineer at the beginning
*	Software always changes, evolves, grows

## SOLID as a tool, not the goal
*	Make it as simple as possible
*	Pain and friction will indicate when your design needs to grow
*	Use SOLID (and other) principles as guidelines while refactoring
*	Write code for the next junior developer to come aboard

Tweet: https://twitter.com/jeremydmiller/status/275664471832268800

## Law of Demeter
*	Principle of least knowledge
*	"Only talk to your immediate friends.”
*	Should not be followed dogmatically
*	Good to find code smells

## Sandi Metz' Rules
1. Classes can be no longer than one hundred lines of code.
2. Methods can be no longer than five lines of code.
3. Pass no more than four parameters into a method. Hash options are parameters.
4. Controllers can instantiate only one object. Views must follow Law of Demeter.

*	You should break these rules only if you have a good reason or your pair lets you
*	Good reminder about Single Responsibility

## Challenges
*	ActiveRecord
*	MVC
*	Deadlines
