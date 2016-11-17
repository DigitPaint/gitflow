---
title: "Go with the GitFlow"
layout: "default"
---

# Pull requests

Up until now we have manually merged features. This is quite tedious as you have to check if things can be merged manually and it's not always instantly clear what you're merging.

In these excercises you'll learn how to create and use pull requests to the full potential.

## Before you begin
1. Fork https://github.com/DigitPaint/gitflow-exercises
2. Clone the repository into a new directory (Do not re-use the working directory from another exercise).

## Adding a feature

In this exercise you'll (again) add a feature for 'Hello World' in PHP.

### Steps

1. Create a new feature branch from the `develop` branch
2. Add one or two hello world variants in PHP. For the sake of this exercise, add a typo somewhere.
3. Update the readme
4. Commit as you would
5. Push & create a pull request
6. Review your own changes (or let someone else do that) on Github (and notice your typo)
7. Fix your typo
8. Merge your PR in Github
9. Make sure your feature branch will be deleted

## Merging feature by pull-request

In this exercise you'll create and merge an existing feature for 'Hello World' in Bash.

### Steps

1. Create a PR for the `feature-hello-bash` branch
2. Fix conflicts
3. Merge the PR
4. Remove the source branch

## Discussion

- What strategy did you apply to get the `feature-hello-bash` in a mergeable state?
- Why do you think having "Fix typo" commits may not be the best idea?



