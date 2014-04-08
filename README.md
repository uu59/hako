# Hako

![](hako.jpg)

<https://www.flickr.com/photos/enpapelarte/3941955109>

# Usage

    $ git clone https://github.com/uu59/hako
    $ cd hako
    $ bundle install
    $ cp config.ru{.sample,}
    $ bundle exec rackup

then,

    $ curl -XPUT --user foo:bar -d "testdata" http://localhost:9292/test
    $ curl -XGET --user foo:bar http://localhost:9292/test
    $ curl -XDELETE --user foo:bar http://localhost:9292/test

