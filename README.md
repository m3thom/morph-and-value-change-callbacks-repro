# README

```shell
bundle install

rails db:create
rails db:migrate

yarn install

bin/dev
```

# Steps to reproduce
- Go to `posts/new`
- In the simulate simple post draft form, try to select difference options cause post content to change to `["a", "b", "c"]`
- Log at `app/javascript/controllers/post_controller.js#boolFromCombinationValueChanged` on appear in the console only one time.