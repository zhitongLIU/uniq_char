# UniqChar

[![Gem Version](https://badge.fury.io/rb/uniq_char.svg)](http://badge.fury.io/rb/uniq_char)
[![Codeship Status for zhitongLIU/uniq_char](https://app.codeship.com/projects/5217c980-870e-0135-dfbb-66311f7cf82a/status?branch=master)](https://app.codeship.com/projects/248262)
[![Patreon](https://img.shields.io/badge/patreon-donate-brightgreen.svg)](https://www.patreon.com/)

<!-- Tocer[start]: Auto-generated, don't remove. -->

# Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Setup](#setup)
- [Usage](#usage)
- [Tests](#tests)
- [Versioning](#versioning)
- [Code of Conduct](#code-of-conduct)
- [Contributions](#contributions)
- [License](#license)
- [History](#history)
- [Credits](#credits)

<!-- Tocer[finish]: Auto-generated, don't remove. -->

# Features

# Requirements

0. [MRI 2.2.3](https://www.ruby-lang.org)

# Setup

For an insecure install, type the following (not recommended):

    gem install uniq_char

Add the following to your Gemfile:

    gem "uniq_char"

# Usage
```ruby
  require 'uniq_char'

  'aabbce'.first_uniq_char
  # => 'c'

  'aabbce'.first_uniq_char2
  # => 'c'

  'aabbce'.uniq_chars
  # => ['c', 'e']

  'aabbce'.uniq_chars.first
  # => 'c'
```
# Tests

To test, run:

    bundle exec rake

# Versioning
0.2.0

# Code of Conduct

Please note that this project is released with a [CODE OF CONDUCT](CODE_OF_CONDUCT.md). By participating in this project
you agree to abide by its terms.

# Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

# License

Copyright (c) 2017 []().
Read the [LICENSE](LICENSE.md) for details.

# History

Read the [CHANGELOG](CHANGELOG.md) for details.
Built with [Gemsmith](https://github.com/bkuhlmann/gemsmith).

# Credits

Developed by [zhitongLIU]() at []().
