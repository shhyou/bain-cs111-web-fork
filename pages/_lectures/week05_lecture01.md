---
layout: lecture-two-column
title: Monday - Quiz 1
type: quizzes
draft: 0
canvas_id: monday-quiz-1
num: 1
due_date: 2023-10-16
---

Quiz 1 will cover all the content from the beginning of the class up to and including Lecture 9 on Manipulating Composite Data.

* * *

## Logistics

* In-person here in the Auditorium (ANU Students you will receive an email from Prof. Bain one week prior to the Quiz date)
* During your assigned class time; you MUST attend the one you're registered for on CAESAR.
* Taken on the Lockdown Browser on your personal computer; details on <a href="https://canvas.northwestern.edu/courses/201068/pages/setting-up-the-lockdown-browser" target="_blank"> how to set it up are on our Canvas page.</a>
* Two Practice Quizzes are available on Canvas
* There's also tips on how to use a Practice Exam effectively
* <mark>As early as possible, setup the LDB and use it to open the assignment `Practice Quiz 1b (LDB)` to verify that everything works correctly on your computer.</mark>
* <mark>If you cannot connect your computer to `eduroam`, notify Prof. Bain ASAP</mark>
* We'll do additional review on Friday in-class (it will serve as Mini-Quiz 7)
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
