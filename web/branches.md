---
title: "Go with the GitFlow"
layout: "default"
---

# The branches

1. Master
2. Develop
3. Feature branches (feature-x, bug-x)
4. Release branches (release-x)
5. Hotfix branches (hotfix-x)
6. Integration branches (integration-X)

## Master

Master is your "holy" branch and should always be exactly what you have in production.

The rules about master:

- No force pushing
- No direct commits
- Accepts only merges from:
    + Develop
    + Release branches
    + Hotfix branches
- Merges are always non-fast-forward
- Must be merged back into develop whenever something is merged into master

## Develop

Develop is where future versions with fixes and changes of your application reside. It should always be in a working and releasable state. 

The rules about develop:

- No force pushing
- Direct commits only for really small one-commit fixes
- Accepts only merges from:
    + Feature branches
    + Integration branches
    + Master
- Merges are always non-fast-forward

## Feature branches

Feature branches are the most common type of branch you will create and use. Every (non-urgen)bugfix or new feature will be built in a feature branch.

The rules about feature branches:

- Name should always start with "feature-" or "bug-"
- A feature branch must have a clean history
- A feature branch must be reviewed before it's merged
- All tests and builds must pass before it's merged
- Must be rebased on target branch (develop / integration) before it's merged
- Only 1 or 2 people should be working on a feature
- Branches off from:
    + Develop
    + Integration branch
- Can only be merged into:
    + Develop
    + Integration branch

## Integration branches

Integration branches are just a separate develop branch for big features. They are useful when you're developing a big new feature that consist of many smaller features. Integration branches should be handles as if they were develop.

The rules about integration branches:

- Be cautious about force pushing
- Direct commits only for really small one-commit fixes
- Must be rebased on develop before it's merged
- Branches off from:
    + Develop
- Accepts only merges from:
    + Feature branches
- Can only be merged into:
    + Develop
- Merges are always non-fast-forward

## Release branches

Release branches are created when a certain point of develop should be feature-frozen and be readied for release. In a release branch you'll typically update changelogs and do minor fixes. A release branch is also a typical candidate to release to a test-environment for your (internal)client to test.

The rules about release branches:

- They're optional but recommended
- May not contain new features after branching off
- Branches off from: 
    + Develop
- Can only be merged into:
    + Master
- Merges are always non-fast-forward
 
## Hotfix branches

Hotfix branches are created when there is an urgent issue in production. 

The rules about hotfix branches:

- Same rules as feature branches
- Branches off from:
    + Master
- Can only be merged into:
    + Master