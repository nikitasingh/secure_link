# SecureLink

This gem will help in securing your links by not showing them in the web page if user is not authorized for it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'secure_link'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install secure_link

## Usage

SecureLink expects a +current_user+ method to exist in the controller. First, set up some authentication (such as Authlogic[https://github.com/binarylogic/authlogic] or Devise[https://github.com/plataformatec/devise]).
Also Add a migration to add +role+ column in your +users+ table


## 1. Define Permissions

Permissions are defined in an +Permission+ class. The gem includes a generator for creating this class.

    rails g secure_link:permission

## 2. Adding Permissions

Once the permission file is created, add permissions in the following format -

    [
      ['__URL__','__ROLE__']
    ]

Example -
    [
      ['/admin', 'admin'],
      ['/users/new', 'super admin']
    ]

## 3. Using Links

Like a normal link -

    <%= link_to "Admin Section", admin_index_path %>



## Contributing

1. Fork it ( https://github.com/[my-github-username]/secure_link/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Next steps:-

1. Adding before filter to check the permission.
2. Use of path and url helpers for URL generation in permission.rb file.
3. Ability to have different column name instead of role.

