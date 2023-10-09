---
layout: module
title: Compound Functions
type: lecture
description: (Mini-Quiz 2)
num: 3
draft: 0
lec_assignment: 1
canvas_title: Lecture 3 (Pre-Recorded) - Compound Functions - Mini-Quiz 2
canvas_id: 1303178
slides:
  - url: https://docs.google.com/presentation/d/1DKdPrBD8D7yc04_Xh18HM11DYRKd7QIA2xqta2ucIM8/edit?usp=sharing
    title: Compound Functions (Pre-Recorded)
videos:
  - url: https://northwestern.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=e6598c90-64cf-4f00-bbe9-b085000c905a
    title: "Lecture 3.1 - Rules of Computation"
    duration: "7:42"
  - url: https://northwestern.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=ecf0488c-b5b3-4dbf-a83b-b085000c908f
    title: "Lecture 3.2 - Defining New Names"
    duration: "7:42"
  - url: https://northwestern.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=e2196d69-79f5-4bab-b4c3-b085000c90fb
    title: "Lecture 3.3 - Abstracting"
    duration: "5:27"
  - url: https://northwestern.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=84d6e695-e0cb-488a-9cae-b085000c90c7
    title: "Lecture 3.4 - Lambda Expressions"
    duration: "8:42"
  - url: 
    title: "Lecture 3.5 - Type Signatures (<b>Mini-Quiz 2</b> - use load button)"
    duration: "5:37"
    quiz: 1
  - url: https://northwestern.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=fde5148a-f5a9-454e-bcb6-b085000c9c77
    title: "Lecture 3.6 - DrRacket Demos"
    duration: "5:53"
due_date: 2023-09-27
exercise_url: "lecture03.zip"
---

Today is our first Tutorial day! In the pre-recorded lecture, we explore the idea of _abstraction_: of making our code flexible rather than fixed.

The idea of **compound functions** is essentially a function within another function. Put more simply, it's the idea that we can `define` our OWN functions. We do this through something called a `lambda` expression. Just as we can use `(define netid "abc1234")` to store the value of `"abc1234"` inside the name `netid`, we can store the value of a function inside a name like so:

```racket
(define add-1
  (lambda (x) (+ x 1)))
```

This means we can then call this function with inputs later on:

```
(add-1 1)
```

and Racket will look up the value of `add-1` in its dictionary and then execute it with the input `1`...eventually giving us `2`!

Pretty cool.

**In-class** we'll complete Tutorial 0 which is mostly focused on the content from Monday's lecture on 2D Graphics, but the last activity of which requires you to define your own `glasses` function.
