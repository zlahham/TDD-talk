##TDD with Ruby/Rails

Summary
=======
This is a summary of a talk I gave at [Boundless Drop](http://boundlessdrop.com) (where I work). I introduced TDD with Ruby and more importantly gave a run through of the tools/techniques that I commonly use to make my life easier and get the job done more efficiently

A bit of historical Context
---------------------------
- TDD is short for Test-driven development
- Testing first appeared in the late 90's with XP (Extreme Programming)
- Sits under the Agile development umbrella along with many other techniques such as: pair programming, code reviews, scrum, kanban, behaviour driven development (BDD)
- Evolved and implemented heavily in the past 10 years
- Quite a polarizing topic in the waterfall crowd
- The Rails community is credited with popularizing TDD more than any other

TDD in a nutshell
-----------------
Lets first address the following questions that usually come up when talking about TDD:

####So how does this actually work?
In three words: Red-Green-Refactor!

We begin with a few user stories that have been agreed upon such as these:

```
As a customer of Park Plaza,
So that I can park my car,
I'd like a the barrier to open when I arrive

As a customer of Park Plaza,
So that I can save time while parking,
I'd like to see which floors are full before driving through them
```

We initially want to write a failing test (Red), which is then fixed by writing the correct code that passes that test (Green), which is then followed by a code clean up that could involve making the code run faster, look cleaner or otherwise (Refactor).

![tdd-cycle](http://i.imgur.com/dEpQrOv.png)

####Why would we write a test before even writing a line of code?
- I truly believe that doing this allows you as an engineer to further understand the project requirements
- You keep questioning why and how this part of the product is working
- Ensures that the code coverage is high from the beginning rather than worry about it later
- Allows you to pick up on other faults/issues with the system before even reaching them
- This allows others in the team to understand what you meant to do with a certain function/method/feature when the come across it.

####Doesn't that make our sprint slower?
Yes and no.

- If everyone is TDDing, after a short time, the benefits will definetly out way the time spent testing first.
- Keep in mind that testing first allows you to catch bugs earlier on so that helps with user testing
- Your code base is always "Cleaner" if you refactor properly
- Like all worthwhile investments, of course it takes time!

####Is it even beneficial to write tests at all?

For production grade applications this is a no brainer. When you are dealing with clients and getting things right the first time would mean that we can cut costs over the short and long run, then testing is an essential part of any project.

As we all know, merging branches can be a pain. If everything is tested in isolation and then tested when integrated, subsequent bugs are repelled faster

Further reading on a controlled experiment that was conducted in the academic sphere, take a look at this [paper](http://nparc.cisti-icist.nrc-cnrc.gc.ca/eng/view/accepted/?id=0420df64-f474-4072-8df6-c7b87c0de643)

####Points to keep in mind

- It is code after all so the same principles still apply. In the case of Ruby, SOLID and the gang should not be ignored!
- KISS your tests
- Should run efficiently and quickly
- TDD is great with git!
- Deployment becomes a breeze!
- Badly written tests are as bad as badly written code
- Both Unit tests and feature tests are equally important


Other great tools that help with TDD
------------------------------------
1. [Guard](https://github.com/guard/guard)
2. [Rubocop](https://github.com/bbatsov/rubocop)
3. vim
4. Tmux
5. Capybara/Capybara webkit
6. [ Coveralls ](https://coveralls.io/)
7. [Travis CI](https://travis-ci.org/)


Setting up RSpec for a simple Ruby project
------------------------------------------
1. `gem install rspec`
2. `rspec --init` which generates a `.rspec` file and a `/spec` directory which include `spec_helper.rb`
3. add `--format documentation` to the `.rspec` file to get better messages when running the test suite
