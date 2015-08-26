## Important note about the project

This is a hollowed copy of an _interactive story_ (game) powered by the [Phaser.js](http://phaser.io) game engine.

In keeping with the wishes of the owner, [EulaConstellar](https://github.com/EulaConstellar), of the private project, who also holds ownership of the assets, the assets have been removed from this publicly viewable copy.

Consequently, whilst the game launches successfully, it is humanly un-playable due to the missing assets.

The author has expressed their intent to release a video walkthrough for the public.

----

Since the assets were also present in the `git` history, it has been erased and a this copy is given a new one. Therefore, sadly, it shall **not** reflect the progression of work.

----

## Pre-Launch
1. Download or clone the project (then unzip if downloaded as a ZIP file)
1. Ensure Ruby `v2.1` (or higher) is installed
1. Ensure the [`bundler`](http://bundler.io) gem is installed
1. Run `bundle install` to install all gem dependencies

## Launch
1. Run `bin/rails server` to launch the server
1. Visit `localhost:3000` - voila!

## Technical characteristics overview
In its current form, the only useable aspects of the project are the
- links
- Facebook authentication
- Contact Us form

#### Database
- PostgreSQL `v9` on Heroku

#### Facebook authentication and User Management
- The [`omniauth`](https://github.com/intridea/omniauth) gem was used to implement single sign-on with Facebook.
  - Single sign-on (SSO) was implemented as the only route to sign-up / sign-in so as to spare the user the hassle of creating yet one more account on the web.
- Users under the age of 16 are **not** allowed to sign-on; they are **not** allowed access to the game.
- Facebook / User data is **not** shared with anyone; no third-party has access to it.
- The only aspects of publicly accessible Facebook information collected as part of a user's details are
  - full name
  - email
  - the lower limit of the age range
  - URL of the profile photo

#### _Contact Us_ form
The following gems were used to setup the Contact Us form:
- [`mail_form`](https://github.com/plataformatec/mail_form)
- [`simple_form`](https://github.com/plataformatec/simple_form)

### Future plans of the owner of this copy of the project
- Tests
