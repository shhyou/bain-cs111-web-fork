---
layout: module
title: Monday - Lecture 8 - Composite Data
type: lecture
description:
num: 8
draft: 0
canvas_id: monday-lecture-8-composite-data
due_date: 2023-10-09
exercise_url: "lecture08.zip"
videos:
   - title: "Live Lecture (note: slides weren't captured so you'll need to use the Google Slides link to view separately)"
     url: https://northwestern.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=8c08bf44-a5b4-4a2a-aa44-b0780012e1c0
     duration: "50:00"
slides:
   - title: "Composite Data Types"
     url: https://docs.google.com/presentation/d/1aExXnfMtzdExXegGnMNqZQ3x4gNLdm9FHdekNnRKEa0/edit?usp=sharing
readings:
   - title: "Chp 8: Lists"
     author: "HTDP"
     url: http://htdp.org/2022-8-7/Book/part_two.html#%28part._ch~3alists1%29
     notes: "Skimming this might be helpful for lists."
   - title: "Chp 5: Structure"
     author: "HTDP"
     url: http://htdp.org/2022-8-7/Book/part_one.html#%28part._sec~3astructures%29
     notes: "Skimming this might be helpful for record types."
---
Up until now, we've really only had simple ways of representing data: numbers, booleans, strings, etc.

In today's lecture, we are going to go learn how to compose data objects in the ISL in order to represent the real world. We'll do this via two different composite data types:

1. lists: ordered sequences of data
2. record types (structs): data that have many named fields with associated values
