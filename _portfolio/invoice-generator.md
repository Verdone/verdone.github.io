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

Using pdfmake, the website takes client-side form inputs to generate an invoice. The items that will appear on the invoice also have the option to include Québec sales tax (QST) and/or goods and services tax (GST) lines if applicable. 

The inspiration behind this project was just not wanting to have invoices generated with a watermark at the bottom. Things turned out great as this was simple and easy to create (mostly thanks to the open-source libraries used.)

## Learning Outcomes

This small programming project reminded me of my Univeristy assignments. It also helped me better understand the differences between software engineering and programming.

When it comes to something that lasts a few days and brings with it little to no maintenance, your main focus isn't on things like large-scale infrastructure design. In contrast to large-scale projects, there were no meetings for system design, code review, or dependency management to create this simple invoice generator. I didn't worry about sanitizing a client-side form or using a type validation library.

I think that small-scale programming projects such as this one are rewarding but I think I like the idea of having the opportunity to work on larger, serious engineering projects.