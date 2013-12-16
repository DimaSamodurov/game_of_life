Game of life
============

Implementation of [Game Of Life](http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)
at [Coderetreat 2013, Lviv, Ukraine](http://coderetreat.org/events/global-day-of-coderetreat-2013-lviv-ukraine)



How to run
==========
Open terminal window full screen.

    ruby game.rb


How to test

    rspec test.rb


Notes about the code
====================

That was the last iteration of six where we at last successfully completed the game implementation
(though i enhanced rendering slightly afterwards).
Each iteration took 45 minutes and we had to delete all code at the end.

I must admit that time pressure made me writing worse code and less tests.

At the first or third iteration we had much nicer tests (yes, testing rules), better coverage, cleaner code but.. incomplete task.
May be i understood task incorrect.



Feedback
========

Thanks to organizers. It was fun.
One thing i realized better (again and again): don't rely on existing code too much. Things can change.
Algorithm is important, architecture is important, code is not as important.

Wishes
============

Introduce constraints early to motivate developers to think different.
Introduce more technology constraints with the same purpose.


Weak code
========

    next_state(i, j)

This method does the following:
  1) finds a value of the cell by coordinates;
  2) calculate neighbour count
  3) apply rules based on item. 2.

As we can see - applying rules does not relate on coordinates, but coordinates are params of the method.
Method had better be split.


