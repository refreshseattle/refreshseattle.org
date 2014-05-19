# RefreshSeattle.org

This is the code repository for the refresh seattle website.

## Development

We gladly accept patches, pull-requests, and any other feedback you might have
about how we can improve the site! To do so, either open up an
[issue](/issues)], or create a [pull request](/pulls). Please refer to the
[contributing](./CONTRIBUTING.md) documentation.

### Setup

Make sure you have bundler installed, then run `bundle install` and you should be set.

This application uses Postgres as its data store, so you'll need to make sure
that's properly configured (look at the database.yml file for guidance on
names).

### Tests

To run the test suite, currently (and this is a [bug](/issues/1)), you must use `guard`:

    $ bundle exec guard
    # All guard output happens here
