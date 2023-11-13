---
layout: assignment-two-column
title: Exercise 7
abbreviation: Exercise 7
type: homework
due_date: 2023-11-17
ordering: 8
draft: 0
points: 100
canvas_id: 
canvas_title: Exercise 7
canvas_assignment_group: "Exercises"
canvas_points_possible: 100
canvas_submission_types: "online_upload"
canvas_allowed_extensions: "rkt"
---

In the last several years, you’ve undoubtedly gotten more experience taking exams and quizzes on computers.

But even before then, I bet nearly everyone has taken some kind of personality quiz, whether it be on Buzzfeed, Facebook, etc..

Your job this week is to build an automated quiz taking and scoring system. In this exercise, you’ll be writing `struct`s (with subtyping) and methods.

The end product is an automated "quiz" system that gives a score after the user completes the questions.

Note: As we move into writing code that interacts with a user more, you might find it useful to reference [the Racket documentation](https://docs.racket-lang.org/htdp-langs/advanced.html). While you won't need to actually use the `read` function for this exercise (we take care of it for you) you will need to use the `printf` function (there's a little primer at the top of the assignment template).

<br>
<a class="nu-button" href="{{ site.url }}/course-files/exercises/exercise_7_template.zip" target="_blank">
    Exercise 7 Starter Files <i class="fas fa-download"></i>
</a>
<br>
<br>

* * *

## Part 1: Defining the `question` struct

You’ll begin by implementing a basic `question` struct. This struct should include the following (attribute and method names must match exactly).

In the starter code, we’ve provided an example question (q1) and some tests to be sure that you defined the question struct and its methods properly.

### Required Fields

| Name        | Type   | Description                        |
|-------------|--------|------------------------------------|
| `text`        | string | the text of the question itself    |
| `answer`      | symbol | the correct answer to the question |
| `point-value` | number | the point value of the question    |

### Required Methods

| Name | Inputs | Description |
| ---- | ------ | ----------- |
| `display`      | takes as input ONLY a question                           | Displays `"question: "` followed by the question text and then a new line                                                                                                |
| `check-answer` | takes an input a question and a user response (a `symbol`) | **uses `equal?` to assess whether the response is correct or not**. If the response equals the answer, `check-answer` should return `#true`. Otherwise, it should return `#false`. |

> **Note**: You can't use `symbol=?` here and HAVE to use `equal?` to compare answers as numbers can't be turned into symbols (type `'1` into the interactions window and you'll see that it just gives back a number rather than a symbol).

* * *

## Part 2: multiple-choice sub-type

A `multiple-choice` question differs from a regular question in that we need to tell the user what the possible choices are, displaying numerical labels next to each choice, starting at 1. That is, the way that we display the question differs a bit. Beyond that difference, multiple choice questions are just question. Implement a `multiple-choice-question` struct as a **subtype** of the `question` struct.

In addition to those that are inherited from question, multiple-choice-question should include the following fields:

| Name | Type | Description |
| ---  | --- | ---- |
| number-of-choices | number | the number of choices presented as possible answers to the question |
| choices | (listof string) | the possible answers |

The multiple-choice-question struct **should include its own `display` method**, as the way we display a multiple-choice question differs from how we display a question – we need to show the choices. See below for an image of the user interaction.

In the starter code, we’ve provided an example question (`q2`) and some suggested tests to be sure that you defined the `multiple-choice-question` struct and its methods properly.

For **Test 6** the intent is for you to check that the number-of-choices matches the length of the choices list.

* * *

## Part 3: numeric-question sub-type

A numeric question is displayed just like a question but differs in how we assess the users response. That is, we might be a bit forgiving and allow some bit of error in the numeric answer that they give.

In addition to those that are inherited from question, numeric-question should include one new attribute:

| Name        | Type   | Description                                        |
|-------------|--------|----------------------------------------------------|
| error-range | number | the allowable difference  from the correct answer |

The `numeric-question` struct should include its own `check-answer` method, as the way we check the answer from the user differs from a regular question in that we need to see if the user’s response is within the allowable error (a range around the correct answer). That is, if `(answer - error-range) < response < (answer + error-range)`. See below for an image of the user interaction.

This `check-answer` should return a boolean just like the previous one: if the answer is in the range, it should return `#true` and if the answer is outside the range it should return `#false`.

In the starter code, we’ve provided an example question (q3) and some suggested tests to be sure that you defined the numeric-question struct and its methods properly.

## Part 4: Testing your quiz

Once you’ve implemented all of parts 1, 2 and 3, uncomment the line `(runquiz myquiz)` to take the quiz. You should see something like the interaction shown below:

<img src="{{ site.url }}/assets/exercise_7/ex7_interaction.png" style="width:50%" />

You can leave this line commented uncommented when you submit; it will not affect the autograder either way.

* * *

## Double Checking your Work

Make sure you’ve followed the process outlined in the introduction for every function, and that you’ve thoroughly tested your functions for all possible edge cases.

Before turning your assignment in, **run the file one last time** to make sure that it runs properly and doesn’t generate any exceptions, and all the tests pass. Make sure you've also spent some time writing your OWN `check-expect` calls to test your code.

Assuming they do, submit **only your `exercise_7.rkt` file** on Canvas.

{% include submission_details.md %}