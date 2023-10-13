---
layout: default
canvas_id: drracket-cheatsheet
title: DrRacket Cheatsheet
description: A cheatsheet of DrRacket features compiled by our PMs
ordering: 10
draft: 0
---

Compiled by expert PM Anya Bardach!

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
As we get further into the quarter, it’s very likely that at some point or another you write code that produces an infinite loop — it’ll just keep running until it runs out of memory. If your computer has a lot of memory allocated to DrRacket, this can take an unfortunate amount of time. If you notice your code getting stuck in an infinite loop, you don't have to quit DrRacket and restart it. Hit the stop button in the top right corner. It will become a kill button — hit it again.

<img style="width: 50%;" alt="stop button" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_9.png">

<img style="width: 50%;" alt="kill button" src="{{site.url}}/assets/images/cheatsheet/cheatsheet_10.png">
