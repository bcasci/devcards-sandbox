# devcards-sandbox

Minimal sandbox repo for [DevCards](https://github.com/bcasci/devcards) end-to-end QA testing.

This repo exists solely as a target for DevCards pipeline testing. It contains a trivial Ruby calculator module with obvious gaps (no multiply, divide, etc.) that agents can be asked to fill.

## QA Checklist

1. Register this repo in a DevCards project
2. Configure webhook, OAuth token, and agent command
3. Create a trivial issue ("Add multiply function to calculator.rb")
4. Mark it ready and dispatch the code agent
5. Verify: container spins up, agent runs, PR is opened, webhook fires
6. Merge the PR and verify issue transitions to done

## Structure

- `.devcontainer/devcontainer.json` -- Ruby 3.3 devcontainer
- `calculator.rb` -- trivial functions with gaps
- `test_calculator.rb` -- basic Minitest tests
