---
layout: assignment-two-column
title: Getting Acquainted with the ISL
canvas_title: Exercise 1
abbreviation: Exercise 1
type: homework
due_date: 2023-09-29
ordering: 2
draft: 0
canvas_id: 1303175
points: 100
---

In this assignment you’ll play with simple functions for making images that we’ll use later on in the course.

> **Note**: We've tried to make this assignment accessible to those who have trouble seeing colors, but please let us know if we can provide additional help.

In order to start this assignment, please download the starter files:

<a class="nu-button" href="{{ site.url }}/course-files/exercises/exercise_1_template.zip" target="_blank">
    Exercise 1 Starter Files <i class="fas fa-download"></i>
</a>

This download is a ZIP file which _must be extracted_ before the files can be edited. On a Mac, you can  double click on the ZIP folder and it will extract the files for you. On a Windows computer, you can use [these instructions from Microsoft](https://support.microsoft.com/en-us/windows/zip-and-unzip-files-8d28fa72-f2f9-712f-67df-f80cf89fd4e5).

> **Note**: We highly recommend moving the extracted folder to a CS 111 work folder somewhere on your machine (so you have all your 111 stuff in the same place) and renaming it to make sure you submit the file you mean to later when you go to submit.

Now, open up the extracted file. For this exercise, it's called `exercise_1.rkt`.

* * *

## Activity 1: Red Square
First, let's make a 100x100 red square like the below:

<img alt="red-square" src="{{ site.url }}/assets/exercise_1/a-red-square.svg"/>

Now you should give this square a name. In the Definitions Window type:

<pre>
(define <b>a-red-square</b> <i>your-code-for-the-square</i>)
</pre>

and hit run.

You can now refer to the square by typing `a-red-square` into the interaction window or any code you write.

> **VERY Important Note**: The names you give your images (i.e. the names after the word “define”) **must be exactly** as described otherwise the autograder will reject your submission!

* * *

## Activity 2: Blue Circle

Now let's make a blue circle of radius 50.

<img alt="Blue Circle" src="{{ site.url }}/assets/exercise_1/a-blue-circle.svg"/>

Define it as the name: `a-blue-circle`.
* * *

## Activity 3: Barbie Pink Triangle

There's a ton of built-in colors in the ISL, stored in special data object called the `color-database<%>`. We won't worry about the deatils of this more complex piece of data right now, but suffice it to say that when Racket sees you've given it a String as a color input, it looks that string up <a href="https://docs.racket-lang.org/draw/color-database___.html">in this database</a> to see if it has a matching color and replaces that string with the actual "recipe" for that color.

Colors are represented on computers as mixtures of Red, Green, and Blue values – you can imagine it like mixing together red, green, and blue paints to get different colors. Each pixel (i.e. tiny square) on your computer screen gets assigned a different "intensity" of red, green, and blue which mix together to form its color. This means that we don't actually have to use a color's name as inputs for these shape functions; instead we can specifiy the exact mixing of red, green, and blue light that we'd like (these intensities are lowest at a numeric value of 0 and highest at a numeric value of 255).

For instance, confoundingly `"Barbie Pink"` is not a recognized color in ISL. <a href="https://www.google.com/search?q=pantone+219C">"Barbie Pink"</a> is officially Pantone Color 219C which has a red value of 218, a green value of 24, and a blue value of 132. To make a color in the ISL, we can use the `make-color` function which has the following type signature (i.e. recipe):

```
; make-color: number number number -> Color
; or slightly more specifically...
; make-color: (integer-in 0 255) (integer-in 0 255) (integer-in 0 255) -> Color
```

The first input must be the red intensity, the second must be the green intensity, and the third must be the blue intensity.

Use the `make-color` function to create our new color and then use that as an input to some function that allows us to make an upward pointing <a target="_blank" href="https://docs.racket-lang.org/teachpack/2htdpimage.html#%28def._%28%28lib._2htdp%2Fimage..rkt%29._triangle%29%29">equilateral triangle</a> that is solid and has a side length of 100.

<img alt="Barbie Pink Upward-Pointing Equilateral Triangle" src="{{ site.url }}/assets/exercise_1/a-barbie-triangle.svg" style="width:10%" />

Define it as the name: `a-barbie-triangle`.

* * *

## Activity 4: Outline Mode
Repeat Activities 1, 2, and 3 but use outline mode:

<!-- Note I had to manually edit the viewbox of both of these to 0 0 101 101 to make sure they didn't clip - CB 08-2022 -->

`outlined-square` | `outlined-circle` | `outlined-triangle`
- | - | -
<img alt="Outlined Square" src="{{ site.url }}/assets/exercise_1/outlined-square.svg"/> | <img alt="Outlined Circle" src="{{ site.url }}/assets/exercise_1/outlined-circle.svg"/> | <img alt="Outlined Triangle" src="{{ site.url }}/assets/exercise_1/outlined-triangle.svg" />

Define them as the names `outlined-square`, `outlined-circle`, and `outlined-triangle` respectively.
* * *

## Activity 5: Compound Images
Now let’s make compound images from simpler images. Use `overlay`, `above`, and `beside` to make the following compound images, defined as follows:

<span style="font-weight:normal">`row-of-squares`</span> | <img alt="row-of-squares" src="{{ site.url }}/assets/exercise_1/row-of-squares.svg" width="15%"/> |
--------- | :-:
`column-of-squares` | <img alt="column-of-squares" src="{{ site.url }}/assets/exercise_1/column-of-squares.svg" width="5%"/>
`nested-squares` | <img alt="nested-squares" src="{{ site.url }}/assets/exercise_1/nested-squares.svg" width="10%"/>

Make sure to draw out the dataflow diagrams for each of these. You don’t need to turn them in–just draw them on some scratch paper or a whiteboard to make sure you understand how the data moves through the chain of calls.

* * *
## Activity 6: Rotating

Read the [documentation](https://docs.racket-lang.org/teachpack/2htdpimage.html) for the `rotate` function and try making an image that looks like this:

<img alt="rotated-triangles" src="{{ site.url }}/assets/exercise_1/barbie-bowtie.svg" width="20%"/>

Define it as `barbie-bowtie`.

* * *
## Activity 7: Flag of Chicago

Now, make the flag of Chicago:

<!-- viewBox="-1 -1 201 122" stroke-width:2px -->
<img alt="flag-of-chicago" src="{{ site.url }}/assets/exercise_1/flag-of-chicago.svg"/>

You might need some more functions than the ones we have discussed so far. You may find `radial-star` and `overlay/xy` to be helpful. Remember all the functions in the ISL are explained in the [ISL documentation](https://docs.racket-lang.org/teachpack/2htdpimage.html) and your image doesn’t need to be exact! Define it as `flag-of-chicago`. And again, make sure that you can sketch out the dataflow diagram for it.

> Note: there is no need for any lambda expression in ANY of these activities.

* * *

## Turning it in
Once you’ve finished your assignment, **PLEASE READ THE _Autograder and Submission FAQ_ and _Exercise Submission and Grading FAQ_** (they're on Canvas under "Course Resources" or in the _Pages_ tab) before submitting it to Canvas. Congratulations! You’re done with the assignment for this week!

* * *

## Requesting a Late Penalty Waiver
If you need to request a late penalty waiver on this assignment use the <a href="https://forms.gle/qPjnrmqtZSjpaGAY6">Late Penalty Waiver form</a>. Please see this Syllabus for requirements.
