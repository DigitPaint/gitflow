---
title: "Go with the GitFlow"
layout: "default"
---

# Workflow
 
... or how to get things done.

## New feature or bug

1. Create a new feature branch from develop
2. Build the feature or fix the bug and create beautiful commits
3. Prepare for a pull request:
    1. Clean up your branches history
    2. Rebase your branch on develop
    6. Push to remote
7. Create pull request
    1. Build passes?
    2. Code has been reviewed?
8. Fix any issues that arise from build/review without creating fix commits
9. Force push to remote
10. Update pull request
    1. Build passes?
    2. Code has been reviewed?
11. Rebase on develop if needed
12. Merge non-fast forward into develop
13. Delete feature branch

## Large-scale feature, overhaul or change

1. Create a new integration branch from develop
2. Create feature branches on the integration branch and apply the workflow as you would on develop except that you merge into the integration branch
3. Rebase the integration branch on develop
4. Merge non-fast forward into develop
5. Delete integration branch

### Keeping the integration branch in sync with develop
As new features are being developed on develop you probably want to have those changes in the integration branch as well. 

1. Warn all people working with/on the integration branch that you're going to update it.
2. Rebase the integration branch on develop
3. Force push the integration branch
4. Tell your colleagues to `git checkout NAME_OF_INTEGRATION_BRANCH`, `git fetch` and `git reset --hard origin/NAME_OF_INTEGRATION_BRANCH` **Warning** They'll lose any work that has been directly commited on the integration branch and was not pushed before your rebase. Hence the warning beforehand.
5. Your colleagues can now rebase their feature branches and are all up to date.

## Releasing

1. Create a new release branch from develop. By doing this you have frozen the features in that release branch.
2. Prepare for release (update changelog, etc.)
3. Deploy release branch to test/staging servers
4. Fix any issues that have been found during testing
5. Merge non-fast-forward into master
6. Merge master back into develop
7. Deploy master to production

## Emergencies
Whenever problems arise in existing releases.

1. Create a hotfix branch from master
2. Build the fix
3. Create a pull request
    1. Build passes?
    2. Code has been reviewed?
4. Merge non-fast-forward into master 
5. Delete hotfix branch
6. Merge master back into develop
7. Deploy master to production