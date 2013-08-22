# Phlogger

By [Stephanie Datu](http://blog.stephdatu.com).

## Description
**Phlogger** is a blog for sharing your photos, which are saved to your Amazon S3 account. An example of this application can be found at http://phlog-blog.herokuapp.com/photos.

## Installation

This application uses the [Sidekiq](https://github.com/mperham/sidekiq) gem (which is dependent on [Redis](http://redis.io/)) to run the image uploading job in the background. You will need to ensure you have Redis server installed locally on your machine to use this application.
```
apt-get install redis-server
```

It also uses the [RMagick](https://github.com/rmagick/rmagick) gem, which is dependent on ImageMagick.
```
apt-get install imagemagick
apt-get install libmagickwand-dev
```

Since the images are uploaded to an Amazon S3 bucket, you will need to set up environment variables the AWS Access Key ID, Secret Access Key, and S3 Bucket. You will also need to specify your own secret token for Rails. (If you are deploying to Heroku, I suggest using Redis To Go. You will need to store your [Redis To Go](http://redistogo.com/) URL information )
```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_S3_BUCKET
REDISTOGO_URL
SECRET_KEY_BASE
```

Once the inital configuration is added, run the following to setup the application:
```
bundle
rake db:setup
```

Run the background worker before running the server:
```
bundle exec sidekiq
rails server
```

### Known Issues

If you discover any bugs, feel free to create an issue on GitHub fork and send a pull request.

## Author

* Stephanie Datu (https://github.com/stephdatu)


## License

http://stephdatu.mit-license.org/
