---
layout: assignment-two-column
title: 
abbreviation: Exercise 8
type: homework
due_date: 2023-12-01
ordering: 9
draft: 0
canvas_id: 1322297
canvas_title: Exercise 8
canvas_assignment_group: "Exercises"
canvas_points_possible: 100
canvas_submission_types: "online_upload"
canvas_allowed_extensions: "rkt"
---

**REMINDER:** You are not allowed to drop this assignment. You must submit it.

In this assignment you'll be continuing your work on the Asteroids game. **This assignment assumes you have already completed the Tutorial part of this assignment and will ask you to continue working on that same file. The final submission must include ALL** parts of the assignment.

* * *

## Getting Started

Open your `tutorial_8.rkt` file you worked on for the tutorial. You'll use this as a starting point (if you didn't finish, refer to the Tutorial 8 assignment page for those instructions. It might also be useful to refer to that page for details on how the Asteroids Library works and how to deal with `posn`s). I'd recommend first making a copy of the file and naming the new one `exercise_8.rkt` so you know which file is the new one.

For this exercise, we're going to add two new kinds of objects to the Asteroids game to make it more interesting. The first kind of object is a guided missile, heat-seeker, that automatically targets the closest asteroids and the second kind of object is an immortal enemy “AI”, ufo, that slowly moves toward the player to attack it.

Here is an example screenshot of the completed game. Your work doesn't have to look 100% the same.

<img alt="finished screenshot" src="{{ site.url }}/assets/tutorial_8/completed_asteroids.png" style="width: 50%" />

* * *

## Q1: The `heat-seeker` Struct

Use `define-struct` to define a new structure type `heat-seeker` that is a sub-type of the `missile` struct:

* Name of the new structure type: `heat-seeker`
* Sub-type of: `missile`
* Fields: The `heat-seeker` struct does not add any extra fields to the missile struct.

At this point, you should be able to run the game and press `s` to fire `heat-seekers`. Next, implement the `update!`, `render` and `radius` methods of the `heat-seeker` struct to make it track asteroids.

* The `update!` method should mutate the velocity of the `heat-seeker` so it is accelerating in the direction of the closest asteroid. When no asteroid is left on the screen, the heat-seeker’s velocity stays constant.

More concretely, if the new velocity of the heat-seeker is `v2`, the old velocity of the heat-seeker is `v1`, the position of the asteroid closest to the heat-seeker is `PA` and the position of the heat-seeker is `PH`, then `v2 - v1` should be parallel to `PA - PH`. Again, the `asteroids_lib.rkt` library provides two functions for computing with game objects’ positions.

```racket
; heading-of : game-object game-object -> posn
; Computes the direction (unit vector) pointing towards the first object when viewing from the second object.
```

The `heading-of` function takes to game objects, A and H, and computes the unit vector that points toward A when viewing from H.

```racket
; closest-asteroid-to : game-object -> asteroid or #false
; Takes a game object and returns the nearest asteroid to the given game object or #false if there is no asteroid left.
```

The `closest-asteroid-to` function takes a `game-object` and returns the asteroid that is closest to the given `game-object` if there is at least one asteroid on the screen (i.e. in the `all-game-objects` list). When there is no asteroid left, closest-asteroid-to returns `#false`.

* The `render` method returns an image of the heat-seeker.
* The `radius` method returns the size of the `heat-seeker`. It should be a positive number.

Note: We didn’t mention anything about decreasing the heat-seekers’ lifetime. It’s up to your choice to grant the heat-seeking missiles eternal lives or not.

* * *

## Q2: An Enemy AI: The ufo struct

Use `define-struct` to define a new structure type ufo that inherits the game-object struct:

* Name of the new structure type: `ufo`
* It's a sub-type of `game-object`
* Fields: The `ufo` struct does not add any extra fields to the `game-object` struct.

Having defined the `ufo` structure type, the `./asteroids_lib.rkt` library should automatically create a `ufo` when you start the game. As usual, continue to implement the ufo-specific behavior via the methods.

Implement the `update!`, `radius`, `render` and the `destroy!` methods so the ufo is both immortal and stubbornly moving towards the player.

> Hint. You can access the information of the player through the Game States. To see who calls the destroy! method and when `destroy!` is called, see the `game-object` Struct.

* The `render` method returns an image of the ufo.
* The `radius` method returns the size of the ufo. It should be a positive number.
* The `update!` method should directly set the velocity of the ufo struct to a vector that points toward the player (i.e. no acceleration).
* The `destroy!` method should move the ufo struct back to `(100, 100)` on the screen, instead of removing itself from `all-game-objects` (as the default implementation of game-object does).

* * *

## Double Checking Your Work

**MAKE SURE THAT THERE ARE NO CALLS TO THE `asteroids` (e.g. `(asteroids)`) function IN YOUR CODE WINDOW. You should only do that in the REPL.**

_You only need to submit the `exercise_8.rkt` file._

Before turning your assignment in, **run the file one last time to check your automated tests and then run `(asteroids)` in the REPL to test your game** to make sure that it runs properly, doesn’t generate any exceptions, and all the tests (both built-in and custom) pass. Make sure you've spent some time writing your OWN `check-expect` calls to test your code.

{% include submission_details.md %}