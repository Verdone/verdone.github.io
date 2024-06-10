---
title: "Physics Simulations"
excerpt: "Educational and interactive simulations related to standing waves for myr CEGEP capstone project."
last_modified_at: 2024-05-14T16:20:02-05:00
header:
  teaser: /assets/images/blog/2024/physics-sim-waves.png
sidebar:
  - image: /assets/images/blog/2024/physics-sim-waves.png
    image_alt: "physics simulation demonstration"
  - title: "Role"
    text: "Desktop Application Developer"
  - title: "Responsibilities"
    text: "Implement the functionality for the standing waves simulation"
  - title: "Duration"
    text: "January 2022 - April 2022"
  - title: "Tech Stack"
    text: "JavaFX and CSS"
---

<br/>

**This project is not hosted online, but you can still see the full GitHub repository <a href="https://github.com/Verdone/vanier-capstone-project" target="blank">at the link here</a>.**

## Summary

For the last semester of Computer Science and Mathematics at Vanier College, a capstone project was assigned to groups of students. Aside from coding, teams applied scrum/agile methodologies, learnt about the software development cycle, worked with Trello, wrote PCA Reports, and eventually presented their final project in-class.

Our group created two educational and interactive simulations related to physics: the first was for Newton's laws of motion, and the second was for standing waves. I was tasked with working on the standing waves simulation.

The tools used for this project were Java, JavaFX, & CSS — while JSON was also used to fetch data and pictures relating to the simulations.

## How the Standing Waves Simulation Works

For the context of making a JavaFX application, the way to implement standing waves was through discretized values. A teacher at Vanier College, Mr. Stephen Cohen, was kind enough to help us out with the calculations for this simulation.

<img src="{{ site.url }}{{ site.baseurl }}/assets/images/blog/2024/waves-calculations.jpg" alt="Calculations for standing waves from physics.">

In JavaFX, you can create objects that will appear on the GUI of your desktop application. For example, you can create simple shape objects like a circle or square. The waves themselves are created from arrays of approximately 200 circle objects. The position of each circle is determined based on governing equations for waves. Once that was settled, the last big feature left to implement was the ability to customize the frequency, amplitude and wave speed for the travelling waves.

The rest was really straightforward; the grid was created via an array of squares, and the data displayed on the screen in real-time was based on current values stored from math calculations from the code.

## Learning Outcomes

Everyone was pretty familiar with JavaFX prior to working on this project since we had all taken a class on working in a GUI. The real learning outcomes stemmed from understanding the software development cycle and writing PCA Reports. It was great because I felt like I was working on a real-world software engineering project, with elements of physics and math tied into it. In the future, it would be really fascinating to work on another math/physics-related project, especially with everything I've learnt in University at the time that I'm writing this.
