# DevCards Sandbox

A minimal Ruby project for DevCards end-to-end QA testing.

## Structure

- `calculator.rb` - Simple Calculator module with add/subtract/hello
- `test_calculator.rb` - Minitest tests for Calculator
- `Gemfile` - Ruby dependencies

## Tasks

When given a task, follow these steps:

1. Read the task description from `.devcards/task.md`
2. Implement the requested changes to `calculator.rb`
3. Update `test_calculator.rb` with tests for new functionality
4. Run tests: `ruby test_calculator.rb`
5. Write results to `.devcards/spec-output.md` (for spec tasks) or commit changes (for code tasks)

## Rules

- Keep it simple - this is a calculator module
- All methods are class methods on the Calculator module
- Every method must have a corresponding test
- Use Minitest assertions (assert_equal, assert_raises, etc.)

