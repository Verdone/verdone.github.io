---
title: "SWE Insight"
excerpt: "Explore computer science concepts to become a better SWE (software engineer)."
last_modified_at: 2024-05-14T16:20:02-05:00
header:
  image: /assets/images/blog/2024/swe-insight-homepage.png
  teaser: /assets/images/blog/2024/swe-insight-homepage.png
sidebar:
  - title: "Project Type"
    image: /assets/images/blog/2024/swe-insight-stack.png
    image_alt: "logo"
    text: "Personal Project"
  - title: "Duration"
    text: "December 2023 - January 2024"
  - title: "Tech Stack"
    text: "SvelteKit and TailwindCSS"
---

<br/>

**This project is hosted online <a href="https://swe-insight.vercel.app/" target="blank">at the link here</a>. See the GitHub repository <a href="https://github.com/Verdone/swe-insight" target="blank">here</a>.**

## What's this Website About?

I wanted to make a website for exploring computer science topics. There's a lot of sections that remain unfinished, such as the portion for system design. In any case, I'm proud of how the sorting algorithm sections turned out.

## Focus on Sorting Algorithms

<img src="{{ site.url }}{{ site.baseurl }}/assets/images/blog/2024/swe-insight-bubble-sort.png" alt="Bubble sort algorithm visualization.">

The implementation for showcasing each sorting algorithm on a page was really straightforward and just used JavaScript functions.

```javascript
function bubbleSort(array) {
  const moves = [];
  let swapped;
  do {
    swapped = false;
    for (let j = 1; j < array.length; j++) {
      moves.push({
        indices: [j - 1, j],
        type: "compare",
      });
      if (array[j - 1] > array[j]) {
        moves.push({
          indices: [j - 1, j],
          type: "swap",
        });
        [array[j - 1], array[j]] = [array[j], array[j - 1]];
        swapped = true;
      }
    }
  } while (swapped);
  return moves;
}
```

The first function implements the specific sorting algorithm. For this example, I'm showing the bubble sort algorithm. It repeatedly steps through an array, compares adjacent elements, and swaps them if they are in the wrong order.

The function also tracks each move with a _moves_ array in order to visualize the sorting algorithm to the end user.

```javascript
function showBars(move) {
  const bars = document.querySelectorAll(".bar");
  bars.forEach((bar, index) => {
    if (move && move.indices.includes(index)) {
      bar.style.backgroundColor = move.type == "swap" ? "#f08178" : "#b0c4de";
    } else {
      bar.style.backgroundColor = "white";
    }
  });
}
```

Next, the function _showBars_ is responsible for visualizing the sorting process by highlighting bars on a webpage. It takes a move object as its only argument, which describes a sorting action (comparison or swap). First it gets all HTML elements with the class "bar" then iterates through each one. If the current bar is included in the move's indices, it changes its color based on whether the move type is a comparison or swap. Otherwise, it resets the bar's background color to white.

```javascript
function playSound(freq) {
  if (audioCtx == null) {
    audioCtx = new (AudioContext || webkitAudioContext)();
  }

  const duration = 0.1;
  const osc = audioCtx.createOscillator();
  osc.frequency.value = freq;
  osc.type = "triangle";
  osc.start(0);
  osc.stop(audioCtx.currentTime + duration);
  const node = audioCtx.createGain();
  node.gain.value = volume;
  node.gain.exponentialRampToValueAtTime(
    0.00001,
    audioCtx.currentTime + duration
  );
  osc.connect(node);
  node.connect(audioCtx.destination);
}
```

Finally, there was another important function named _playSound_ that utilizes the Web Audio API to generate an oscillator, which produces sound based on a provided frequency. The frequency value varies based on the size/height of each bar, but it sounds pretty nice on the last pass when all the bars are sorted.

## Pathfinding Algorithm

I also had fun working on sections to showcase A\* Star and Dijkstra's pathfinding algorithms. They make use of search contours, which are the nodes that are currently being explored. I won't go into detail about how I implemented these, but I will say that it was fun to learn so much about them. For example, before digging into these pathfinding algorithms I had no idea that you should consider designing a good <a href="https://en.wikipedia.org/wiki/Heuristic_(computer_science)" target="blank">heuristic</a> for them first.

<img src="{{ site.url }}{{ site.baseurl }}/assets/images/blog/2024/swe-insight-a-star.png" alt="A* Star pathfinding algorithm visualization.">

## Learning Outcomes

In addition to learning more about the algorithms that I showcased on this site, I had fun learning how the Web Audio API works. It was also fun working with SvelteKit and TailwindCSS since it let me prototype an entire website in just a few days. I learnt more about JavaScript and designing a website with a somewhat decent UI/UX which was great.
