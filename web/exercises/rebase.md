---
title: "Go with the GitFlow"
layout: "default"
---

# Rebasing

In these excercises you'll learn how to become a true Git history master by embracing the power of the rebase!

## Before you begin
1. Fork https://github.com/DigitPaint/gitflow-exercises
2. Clone the repository into a new directory (Do not re-use the working directory from another exercise).

## Getting feature branch up to date

In this exercise you'll ready the `feature-hello-go` to be merged.

### Steps

1. Create a new pull request for the `feature-hello-go` branch
2. Rebase on develop to get it up-to-date
5. Merge the feature branch in develop
6. Don't forget to remove the source branch

## Fixing a typo

In this exercise you'll fix a typo in the existing 'Hello World' in Rust.

### Steps

1. Create a PR for the `feature-hello-rust` branch
1. Checkout the branch `feature-hello-rust`
1. Fix the wrongly typed 'Hello Worrrrld' in `hello.rs` without adding an extra commit.
2. Update the PR

## Prepare larger PR for merging

In this exercise we'll considerately rewrite the history of our `feature-hello-js` feature branch to have a completely clean history.

We'll want to end up with this as history:

```
Add Node.js Hello World
Add HTML + javascript Hello World
Add Typescript Hello World
Add Coffescript Hello World
```

To do that we'll have to:

1. Change the commit message for the first commit
2. Combine the "Fix node path in node.js example" commit with the first commit
3. Split the "WIP" commit into two separate commits ("Add Typescript Hello World" and "Add Coffescript Hello World")

And finally as a bonus step:

3. Split the "Update readme" commit and combine the respective readme changes with the "Add Node.js Hello World" and "Add HTML + JavaSript Hello World" (this is easiest with a second interactive rebase)

Good luck!

