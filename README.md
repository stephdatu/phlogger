# Phlogger

By [Stephanie Datu](http://blog.stephdatu.com).

## Description
**Phlogger** is a blog for sharing your photos, which are saved to your Amazon S3 account.

## Installation

This application uses the Sidekiq gem, which is dependent on Redis.
```
apt-get install redis-server
```

It also uses the RMagick gem, which is dependent on ImageMagick.
```
apt-get install imagemagick
apt-get install libmagickwand-dev
```

To install
```
bundle
rake db:setup
```

Run the background worker:

```console
bundle exec sidekiq
```

## Configuration

This block of text should explain how to configure your application:

`rails generate my_example_gem:install`


## Information

Screenshots of your application below:
![Screenshot 1](Screenshot 1 IMG URL goes here)
![Screenshot 2](Screenshot 1 IMG URL goes here)


### Known Issues

If you discover any bugs, feel free to create an issue on GitHub fork and
send us a pull request.

[Issues List](Github Issues List URL goes here).

## Author

* Stephanie Datu (https://github.com/stephdatu)


## License

http://stephdatu.mit-license.org/
