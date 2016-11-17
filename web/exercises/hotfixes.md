---
title: "Go with the GitFlow"
layout: "default"
---

# Hotfixes

In these excercises you'll learn how to create and merge hotfixes.

## Before you begin
1. Fork https://github.com/DigitPaint/gitflow-exercises
2. Clone the repository into a new directory (Do not re-use the working directory from another exercise).

## Creating a hotfix

One of your colleagues is terrible at spelling and has committed a terrible spellingmistake that has been released in version 1.1.0. 

Fixing this cannot wait until the next release. We must create a hotfix!

### Steps

1. Create a new hotfix branch from the `master` branch
2. Fix & commit the error in hello-css.html
3. Prepare for release 1.1.1
4. Merge the hotfix branch into master, make sure it's non-fast-forward
5. Tag it!
6. Make sure to get the changes in develop as well

## Discussion

- Why should we merge non-fast-forward?