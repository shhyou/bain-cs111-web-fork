---
layout: lecture-two-column
title: Quiz 2
canvas_title: Wednesday - Quiz 2
type: quizzes
draft: 0
num: 2
due_date: 2023-11-01
---

Quiz 2 will cover all the content from the beginning of the class up to and including Lecture 15 on Binary Search Trees. It will be focused on ideas surrounding recursion.

* * *

## Logistics

* In-person here in the Auditorium (ANU Students you will receive an email from Prof. Bain one week prior to the Quiz date)
* During your assigned class time; you MUST attend the one you're registered for on CAESAR.
* Taken on the Lockdown Browser on your personal computer; details on <a href="https://canvas.northwestern.edu/courses/201068/pages/setting-up-the-lockdown-browser" target="_blank"> how to set it up are on our Canvas page.</a>
* Practice Quiz is available on Canvas
* There's also tips on how to use a Practice Exam effectively
* <mark>As early as possible, setup the LDB and use it to open the assignment `Practice Quiz 2 (LDB)` to verify that everything works correctly on your computer.</mark>
* <mark>If you cannot connect your computer to `eduroam`, notify Prof. Bain ASAP</mark>
* We'll do additional review on Monday in-class (it will serve as Mini-Quiz 12)
* You can find your section # by looking at CAESAR.
  * COMP_SCI 111-0-1 vs COMP_SCI 111-0-2

* * *

## Style and Content
 
Three Types of Problems:

### 1. What's the type of this expression?

**Examples**: What's the type of the following expression?

```racket
(lambda (n)
  * n 2)
```

The answer would be: `number -> number` because this is a **function** that takes as input numbers and produces as output numbers.

If we were instead to give you an expression:

```racket
(define pineapple 5)
(+ 5 pineapple)
```

The answer would be `number` as this would produce a number (note that you aren't responsible for the value).

If we were to give you something that causes an exception, like:

```racket
(+ 1 "this is dumb")
```

Then the answer would be `exception`.

### 2. Fix-its

* We give you some code
* We give you the expected output
* We give you the actual output
* Your job is to diagnose it and fix it

### 3. Write a valid test for the given function definition

**Example**:

```racket
; a snake is
; (make-snake Number String)
(define-struct snake (weight food))

; skinny-snake?: Snake -> Boolean
; returns true if snake is less than 10 lbs, false otherwise

(define skinny-snake? (lambda (s)
                        (< (snake-weight s) 10))
```

In the blank below, please provide one valid test (`check-expect`) of the procedure.

A valid answer would be:

```racket
(check-expect (skinny-snake? (make-snake 11 "mice")) false)
```

* * *

## Reminders

* You do NOT need to memorize all of the functions <a target="_blank" href="https://bain-cs111.github.io/course-files/quizzes/q3_glossary_compact.pdf">(you get a glossary)</a>
* You DO need to know the Rules of Execution and Special Forms.

* * *

## Extra Practice

Many years ago, one of our amazing PMs Ayo Bolaji (now a Software Engineer at GrubHub), made a series of extra practice problems for the topics covered in Q2. They're all listed below:

> **Note**: In nearly all of these what we call "functions" are called "procedures". Remember that these are interchangeable terms for the time being: they both take in inputs and produce outputs.

* [Composite Procedures]({{site.url}}/course-files/extra-practice/composite_functions_practice.zip)
* [Composite Data]({{site.url}}/course-files/extra-practice/composite_data_practice.zip)
* [Conditionals]({{site.url}}/course-files/extra-practice/conditionals_practice.zip)
* [Lists]({{site.url}}/course-files/extra-practice/lists_practice.zip)
* [Recursion]({{site.url}}/course-files/extra-practice/recursion_practice.zip)
* [Linked Lists]({{site.url}}/course-files/extra-practice/linked_lists_practice.zip)
* [Iterative Recursion]({{site.url}}/course-files/extra-practice/iterative_recursion_practice.zip)

## A Paper Practice Quiz 2

Additionally, here's a **paper** exam from 2019 that has some additional practice on it. Two things to note:
* even though it says "Exam 1" it covers the same material as our Quiz 2
* in calls to `define-struct`, it uses square brackets around the property names. You can treat them as if they're our usual parentheses.

[Link to Practice Exam]({{site.url}}/course-files/quizzes/exam1_w2019.pdf)
[Link to Practice Exam Solutions]({{site.url}}/course-files/quizzes/exam1_w2019_solutions.pdf)