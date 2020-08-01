# RuboCop Moaform

Moaform specific analysis for [RuboCop](https://github.com/rubocop-hq/rubocop).

It contains Moaform's internally used configuration for
[RuboCop](https://github.com/rubocop-hq/rubocop) and
[RuboCop RSpec](https://github.com/backus/rubocop-rspec). It also includes a handful custom rules
that are not currently addressed by other projects.

## Installation

Just put this in your `Gemfile` it depends on the appropriate version of rubocop and rubocop-rspec.

```
gem 'rubocop-moaform'
```

Note: If you want to run with Ruby 2.2 you will need to set your version to 2
```
gem 'rubocop-moaform', '~> 2'
```

## Usage

You need to tell RuboCop to load the Moaform extension. There are three
ways to do this:

### RuboCop configuration file
First Create a new file `.rubocop_moaform.yml` in the same directory as your `.rubocop.yml`
this file should contain
```
require:
  - rubocop-moaform
```

Next add the following to `.rubocop.yml`
or add before `.rubocop_todo.yml` in your existing `inherit_from`

```
inherit_from:
  - .rubocop_moaform.yml
  - .rubocop_todo.yml
```

You need to inherit `.rubocop_moaform.yml` from another file because of Rubocop order of operations.
It runs `inherit_from` before `require` commands. If the configuration is not in a separate file
you could potentially experience a bunch of warnings from `.rubocop_todo.yml` for non-existant
`Moaform` rules.

Now you can run `rubocop` and it will automatically load the RuboCop Moaform
cops together with the standard cops.

### Command line

```bash
rubocop --require rubocop-moaform
```

## The Cops

All cops are located under
[`lib/rubocop/cop/moaform`](lib/rubocop/cop/moaform), and contain
examples/documentation.

In your `.rubocop.yml`, you may treat the Moaform cops just like any other
cop. For example:

```yaml
Moaform/PhraseBundleKeys:
  Exclude:
    - spec/my_poorly_named_spec_file.rb
```

