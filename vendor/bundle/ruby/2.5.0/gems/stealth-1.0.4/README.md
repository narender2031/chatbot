# <a href='https://hellostealth.org'><img src='logo.svg' height='120' alt='Stealth Logo' aria-label='hellostealth.org' /></a>

Stealth is a Ruby based framework for creating conversational (voice & chat) bots. It's design is inspired by Ruby on Rails's philosophy of convention over configuration. It has an MVC architecture with the slight caveat that `views` are aptly named `replies`.

[![Gem Version](https://badge.fury.io/rb/stealth.svg)](https://badge.fury.io/rb/stealth)
[![CircleCI](https://circleci.com/gh/hellostealth/stealth/tree/master.svg?style=shield)](https://circleci.com/gh/hellostealth/stealth/tree/master)

## Getting Started

Getting started with Stealth is simple:

```
> gem install stealth
> stealth new <bot>
```

## Service Integrations

Stealth is extensible. All service integrations are split out into separate Ruby Gems. Things like analytics and natural language processing ([NLP](https://en.wikipedia.org/wiki/Natural-language_processing)) can be added in as gems as well.

Currently, there are gems for:

### Messaging
* [Facebook Messenger](https://github.com/hellostealth/stealth-facebook)
* [Twilio SMS](https://github.com/hellostealth/stealth-twilio)

### Natural Language Processing
* [AWS Comprehend](https://github.com/hellostealth/stealth-aws-comprehend)

### Analytics
* [Mixpanel](https://github.com/hellostealth/stealth-mixpanel)

## Docs

You can find our full docs [here](https://hellostealth.org/docs).

## Thanks

Stealth wouldn't exist without the great work of many other open source projects and people including:

* [Ruby](https://www.ruby-lang.org/) for creating our favorite programming language;
* [Ruby on Rails](http://rubyonrails.org) for projects like `ActiveRecord` and serving as an inspiration;
* [Thor](http://whatisthor.com) for providing us with CLI tools and generators;
* [Sinatra](http://sinatrarb.com) for providing a fantastic, modular way for handling HTTP requests;
* [Sidekiq](https://sidekiq.org) for the super quick background jobs;
* [standalone-migrations](https://github.com/thuss/standalone-migrations) for the help with Rails migrations;
* [Dr. Robert Ford](http://westworld.wikia.com/wiki/Robert_Ford) a.k.a. Anthony Hopkins.

## License

"Stealth" and the Stealth logo are copyright (c) 2018 The Black Ops Bureau Inc.

Stealth source code is released under the MIT License.
