---
layout: module
title: Mutation and Subtypes
type: lecture
description:
draft: 0
num: 21
canvas_id:
canvas_title: Monday - Lecture 21 - Mutation and Subtypes
due_date: 2023-11-13
exercise_url: "lecture21.zip"
slides:
  - title: "Mutation and Subtypes"
    url: https://docs.google.com/presentation/d/11RDfxZA0vI4js1UQwpXll6heKIZdnq4UMxPqsFyc784/edit?usp=sharing
---

So near the beginning of the quarter we learned how to create our own data types with `struct`s.

But what if we wanted to create "related" structs. For example, say we make a struct that represents computers. Well all computers have certain things in common like "CPU", "RAM", "power draw", etc. But there are also radically different types of computers: like laptop and desktop. Laptops have special fields that only apply to them like "battery life" and "display size". How can we represent that sort of relationship in our structs?

We use the idea of **subtyping**!

Oh, speaking of exclamation points...we know we can update primitive variable types. What about updating existing structs? Is that a thing we can do? (Yes. Time for some **mutation**! X-Men...assemble!)
