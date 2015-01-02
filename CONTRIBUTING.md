# Welcome to expansible

Found an error? Have an improvement idea?
Here are some notes on how to best report them so we can get it fixed as quickly as possible.

## Problem Reports, Feature Requests, Integration Questions

Here are some notes on how to report your issue, so that we can respond it as fast and well as possible:

- Explain, as detailed as possible (with text, screenshots, videos,...):
  - what you did (so we can reproduce the issue)
  - what actually happened
  - what you expected to happen
- Include relevant details about involved software (e.g. operating system, ansible version, ...)

**Attention:** please be careful to not include private data, such as access credentials or personal information.

## Pull Requests

Know how to fix something? We love pull requests! Here's a quick guide:

1. [Check for open issues](https://github.com/gildegoma/expansible/issues), or open a fresh issue to start a discussion around a feature idea or a bug. Opening a separate issue to discuss the change is less important for smaller changes, as the discussion can be done in the pull request.
1. Fork this Github repository and start making your changes in a feature branch (`git checkout -b YOUR_BRANCH_NAME origin/master`).
1. (Have a reasonable amount of tests which ensure that your changes won't be removed over time.). This step is currently "disabled" as we are still pending to decide how unit and integration tests will be implemented (e.g. based on ServerSpec, Ansible tasks, etc.)
1. Commit your changes with [good messages](https://github.com/erlang/otp/wiki/Writing-good-commit-messages), including a reference to the related Github issue.
1. Open a pull request. We try to give you some feedback as soon as possible, but if you haven't heard back from us after a couple of days, feel free to leave a comment on the pull request.
