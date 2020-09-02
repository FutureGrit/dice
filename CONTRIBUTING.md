# Contributing to Dice
:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

The following is a set of guidelines for contributing to DICE application, which is hosted by the [FutureGrit](https://futuregrit.com) on GitHub. These are mostly guidelines, not rules. Use your best judgement, and feel free to process changes to this document in a pull request.

## Code of Conduct
This project and everyone participating in it is governed by the [Dice Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to [help.futuregrit@gmail.com](mailto:help.futuregrit@gmail.com).

## What should I know before I get started?

Dice is a small open source project &mdash; it's made up of only [single functionality](https://github.com/FutureGrit/dice/blob/master/lib/main.dart)  to roll a dice. When you initially consider contributing to Dice, you might want to improve, change or report a bug for. This section should help you with that.

* Dice is a Flutter application which is written in the Dart language for mobile plateform iOS and Android.
* Random Number Generator - the basic functionality of the application is to gnerate random number from one to six, as the different faces of the dice.
* Animation - whenever a tap action is performed on the dice, their will be a dice shaking animation to make it more interactive.
* Changing Images - once the animation is finished, the dice face will get updated with the newly generated random number.
* Preloading Images - images are preloaded for smooth, real-time transition between images.
* Orientation - only portrait mode is supported.

These are all the functionalities for understanding this application.

## Suggesting Enhancements
This section guides you through submitting an enhancement suggestion for Dice, including completely new features and minor improvements to existing functionality. Following these guidelines helps maintainers and the community understand your suggestion :pencil: and find related suggestions :mag_right:.

Before creating enhancement suggestions, please check [this list](#before-submitting-an-enhancement-suggestion) as you might find out that you don't need to create one. When you are creating and enhancement suggestion, please [include as many details as possible](#how-do-i-submit-a-good-enhancement-suggestion). Fill in [the template](https://github.com/FutureGrit/dice/blob/master/.github/ISSUE_TEMPLATE/feature_request.md), including the steps that you imagine you would take if the feature you're requesting existed.

#### Before Submitting An Enhancement Suggestion

* Check if there's enhancement is already available, check if you're using the latest version of Dice.
* Determine which feature enhancement should be suggested.
* Perform a search to see if the enhancement has already been suggested. if it has, add a comment to the existing issue instead of opening a new one.

#### How Do I Submit A (Good) Enhancement Suggestion?

Enhancement suggestions are tracked as GitHub issues. Once you've decided enhancement, create an issue and provide following information: 

* **Use a clear and descriptive title** for the issue to identify the suggestion.
* **Provide a step-by-step description of the suggested enhancement** in as many details as possible.
* **Provide specific examples to demonstrate the steps.** Include copy/pasteable snippets which you use in those examples, as [Markdown code block.](https://help.github.com/articles/markdown-basics/#multiple-lines)
* **Describe the current behavior** and **explain which behavior you expected to see instead** and why.
* **Include screenshots and animated GIFs** which help you demonstrate the steps or point out the part of Dice which the suggestion is related to. You can use [this tool](https://www.cockos.com/licecap) to record GIFs on macOS and Windows.
* **Explain why this enhancement would be useful** to most Dice users.

## Styleguides

### Git Commit Messages

* Use the present tense ("Add feature" not "Added feature")
* Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
* Limit the first line to 72 characters or less
* Reference issues and pull requests liberally after the first line
* Consider starting the commit message with an applicable emoji:
    * :art: `:art:` when improving the format/structure of the code
    * :racehorse: `:racehorse:` when improving performance
    * :non-potable_water: `:non-potable_water:` when plugging memory leaks
    * :memo: `:memo:` when writing docs
    * :bug: `:bug:` when fixing a bug
    * :fire: `:fire:` when removing code or files
    * :white_check_mark: `:white_check_mark:` when adding tests
    * :lock: `:lock:` when dealing with security
    * :arrow_up: `:arrow_up:` when upgrading dependencies
    * :arrow_down: `:arrow_down:` when downgrading dependencies
    * :shirt: `:shirt:` when removing linter warnings
