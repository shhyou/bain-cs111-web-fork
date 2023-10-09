---
layout: module
title: Lambda Abstraction
type: lecture
description: (Mini-Quiz 4)
num: 6
draft: 0
canvas_id: 1305414
canvas_title: Lecture 6 (Pre-Recorded) - Lambda Abstraction - Mini-Quiz 4
lec_assignment: 1
exercise_url: "lecture06.zip"
due_date: 2023-10-04
slides:
  - url: https://docs.google.com/presentation/d/1Ymzf7WP5KPebWwkOx-K__O7-i0RiIK5UuD35UJnFvuo/edit?usp=sharing
    title: "Lambda Abstraction"
readings:
  - url: https://web.mit.edu/6.001/6.037/sicp.pdf
    author: Abelson, Sussman, and Sussman.
    title: Structure and Interpretation of Computer Programs
    notes: "Chp. 1.1.1 - 1.1.6 might be helpful!"
videos:
  - url: https://northwestern.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=ae3938ab-78b6-4b05-9a2a-b08e017745ac
    title: "Lecture 6.1: Intro + Substitution Model"
    duration: "5:55"
  - url: https://northwestern.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=d054ae6d-d40f-4db7-83ac-b08e01774577
    title: "Lecture 6.2: Making a Color Gradient"
    duration: "8:58"
  - url: https://northwestern.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=955d43a6-7d06-414b-9885-b08e01774607
    title: "Lecture 6.3: Lambda Abstraction"
    duration: "3:18"
  - url: https://northwestern.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=b765ac68-e2ed-4120-aafa-b08e01774445
    title: "Lecture 6.4: Making a Rotary Pattern"
    duration: "12:07"
  - url: 
    title: "Lecture 6.5: Local Variables (Use <b>Load</b> button to access Mini-Quiz)"
    duration: "6:36"
    quiz: 1
  - url: https://northwestern.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=3dec2701-8a95-4f3f-b85f-b08e01775696
    title: "Lecture 6.6: Grids Revisited"
    duration: "5:23"
---

Today, in the pre-recorded lecture, we'll talk about the idea of _lambda abstraction_. How do we break a problem down into small parts...gradually building a program that is both powerful and flexible to solve problems.

> **Reminder**: Watch the pre-recorded lecture and come to class ready to complete Tutorial 1!

## Local defines

Nearly every language has a way of defining local variables to hold intermediate values.  It’s another bread-and-butter programming thing.  Unfortunately, the `local` expression is one of the uglier features of the Racket student languages. Most languages, including real Racket, have much less verbose ways of defining local variables.

The designers of the student language designed the `local` special form the way they did because they found it caused less confusion for new programmers than the alternatives. But in subsequent courses, you’ll find that you can add a new variable with a lot less typing, including in Racket.
