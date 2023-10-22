---
layout: default
canvas_id: drracket-cheatsheet
title: DrRacket Cheatsheet
description: A cheatsheet of DrRacket features compiled by our PMs
ordering: 10
draft: 0
---

Compiled by Course Staff Members from many years of CS 111. Special thanks to Anya Bardach!

* * *

## Using DrRacket's Stepper
Ever run into a situation where you want to see what the "state" of your program is step-by-step? That's what <a href="https://docs.racket-lang.org/stepper/index.html">DrRacket's _stepper_</a> is for!

Say you've got a function defined like the below recrusive `every?` function. 

<img style="width: 50%;" alt="Stepper" src="{{site.url}}/assets/images/cheatsheet/stepper_1.png">

You can walk through your program running on an example list using the stepper: just click the `Step` button rather than the `Run` button. All it will do is follow the _substitution model_ (just like we do in the slides) step by step and show you the execution. For instance, here's a few steps of the stepper on this example:

<img style="width: 50%;" alt="Stepper 1" src="{{site.url}}/assets/images/cheatsheet/stepper_2.png">
<img style="width: 50%;" alt="Stepper 2" src="{{site.url}}/assets/images/cheatsheet/stepper_3.png">
<img style="width: 50%;" alt="Stepper 3" src="{{site.url}}/assets/images/cheatsheet/stepper_4.png">

This step-by-step execution can help you identify things like:
* missing the base case
* incorrect argument (input) order
* incorrect function calls
* weird behavior surrounding certain inputs and more!

Here's a link to a <a href="https://www.youtube.com/watch?v=TbW1_wn2his">video walkthrough from the DrRacket Academy Channel on YouTube</a>.

* * *
## Using the Check Syntax button

One of the reasons we use DrRacket as an IDE in this class is because it has some very helpful teaching tools in it including the <a href="https://docs.racket-lang.org/drracket/buttons.html">Check Syntax</a> button. When you click this, it will apply Syntax Highlighting to your code to help you identify imported and locally define variables. It will also allow you to view the lexical structure of your code by hovering your cursor on-top of variable names. This will then show you the bindings of various names across your program. This can be **very helpful** when you have many variables named similar things...or make the cardinal mistake of naming inputs to functions the same thing...

<img style="width: 50%;" alt="Check Syntax" src="{{site.url}}/assets/images/cheatsheet/check_syntax.png">


You can even "tack" the arrows so they're always on the screen, rename variables, and more by right-clicking on the variable name in question and accessing those tools from the context menu that pops up.


* * *

## Spooky code after running
When you run your code, you might notice various lines highlighted in black or red depending which light mode you use. This is DrRacket telling you that these sections of code are never being run, and therefore never being checked for errors. When writing check-expects, you want to make sure they are covering every line of code in your function definitions to ensure you don’t miss any errors (because we’ll definitely catch them!)

<img style="width: 50%;" alt="Spooky Code" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_1.png">
<img style="width: 50%;" alt="Partially spooky code" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_2.png">
<img style="width: 50%;" alt="Error from 100% test coverage" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_3.png">

One note is if you make a `check-expect` for an edge case, the code in the check-expect itself may get highlighted black which is okay.

* * *

## Commenting out or uncommenting large sections of code

Sometimes you may want to comment out a function you’re working on or haven’t started yet to run other parts of your code without getting stopped by errors. Rather than comment out the code line by line, highlight the full section and use these handy shortcuts:

<img style="width: 50%;" alt="comment out a big block" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_4.png">


* * *

## Auto formatting
As you write and edit your code, it may be hard to read without proper indentation. DrRacket allows you to automatically format your code by _highlighting the section and hitting the tab button_. This may also help you catch parentheses errors because they won’t format correctly.

Incorrectly formatted:<br>
<img style="width: 50%;" alt="incorrectly formatted example" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_5.png">

Correctly formatted:
<br>

<img style="width: 50%;" alt="correctly formatted example" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_6.png">


For example, if we accidentally added an extra paren after our _test_ in conditional, we'd see this.
<br>


<img style="width: 50%;" alt="incorrectly formatted example" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_7.png">

Rather than this.
<br>


<img style="width: 50%;" alt="correctly formatted example" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_8.png">

* * *

## Stopping infinite loop code
As we get further into the quarter, it’s very likely that at some point or another you write code that produces an infinite loop or an **infinite recursion** — it’ll just keep running until it runs out of memory. If your computer has a lot of memory allocated to DrRacket, this can take an unfortunate amount of time. If you notice your code getting stuck in an infinite loop, you don't have to quit DrRacket and restart it. Hit the stop button in the top right corner. It will become a kill button — hit it again.

<img style="width: 50%;" alt="stop button" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_9.png">

<img style="width: 50%;" alt="kill button" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_10.png">
