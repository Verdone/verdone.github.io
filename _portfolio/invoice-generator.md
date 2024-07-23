---
title: "Invoice Generator"
excerpt: "Generate invoices for items involving the Québec sales tax (QST) and/or goods and services tax (GST)."
last_modified_at: 2024-07-22T16:20:02-05:00
header:
  teaser: /assets/images/blog/2024/invoice-generator.png
sidebar:
  - image: /assets/images/blog/2024/invoice-generator.png
    image_alt: "invoice generator homepage"
  - title: "Description"
    text: "Generate invoices for items involving the Québec sales tax (QST) and/or goods and services tax (GST)."
  - title: "Tech Stack"
    text: "SvelteKit, pdfmake, shadcn-svelte, TailwindCSS, Icons8"
---

**This project is hosted online <a href="https://invoice-generator-seven-sable.vercel.app/" target="blank">at the link here</a>. You can also view the full GitHub repository <a href="https://github.com/Verdone/invoice-generator" target="blank">at the link here</a>.**

## About This Project

The tech stack is mentioned on this page already, but you can also view the <a href="https://invoice-generator-seven-sable.vercel.app/licensing" target="blank">Licensing</a> page on the website for the full list of attributions.

Using pdfmake, the website takes client-side form inputs to generate an invoice. The items that will appear on the invoice also have the option to include Québec sales tax (QST) and/or goods and services tax (GST) lines if applicable. 

The inspiration behind this project was that I was fed up of seeing invoices generated with a watermark at the bottom. Things turned out great as this was simple and easy to create (mostly thanks to the open-source libraries used.)

## Learning Outcomes

This small programming project reminded me of my Univeristy assignments. It also helped me better understand the differences between software engineering and programming. After continuous work on a Software-as-a-Service project, making this invoice generator over the weekend felt much different. 

When it comes to something that lasts a few days and brings with it little to no maintenance, it's likely that your main focus isn't on things such as integration tests and continuous deployment practices. In contrast to large-scale projects, there were no meetings for system design, code review, or dependency management to create this invoice generator. I think that the book titled <a href="https://abseil.io/resources/swe-book" target="blank">"Software Engineering at Google" by Titus Winters, Tom Manshreck and Hyrum Wright</a> properly explains what I'm trying to convey:

> Programming is the immediate act of producing code. Software engineering is the set of policies, practices, and tools that are necessary to make that code useful for as long as it needs to be used and allowing collaboration across a team.

Both programming and software engineering are good in their own right. In the scope of this personal project, I won't worry as to whether I need to sanitize my form, or worry about implementing a declaration/ validation library just so that end users can generate simple PDF documents.

There's something to be said about putting effort into an engineering project though. The attention to detail in each part of a project, the correct decision-makiing, and the success that could follow from all the little things done right, culminates in an incredibly rewarding experience. I think that small-scale programming projects such as this one are rewarding — especially when it's a learning experience or when you have the privelege to work with great open-source libraries — but I think I like the idea of having the opportunity to work on larger, more serious engineering projects.