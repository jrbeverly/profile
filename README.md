# jrbeverly.about
[![License][license-badge]][license-link]
[![Theme License][theme-badge]][theme-link]
[![Build][build-badge]][build-link]

## Summary

This is a one page user profile for Jonathan Beverly (jrbeverly - i.e. me), linking to multiple online identities, relevant external sites, and popular social networking websites. Not all of them are included, but most of the relevant ones are.

## Build Process

This project's static pages are built by GitLab CI, following the steps defined in `.gitlab-ci.yml`.  The process of minimizing the web resources is handled using the command line utility of [`Minify`](https://github.com/tdewolff/minify) which is available [here](https://github.com/tdewolff/minify/tree/master/cmd/minify).

### Why not minify with ___?

The static pages are minified using  [`Minify CLI`](https://github.com/tdewolff/minify/tree/master/cmd/minify) for the simple reason of tinkering.  I wanted to be able to fiddle with various ways of optimizing an static HTML project, and a one page user profile project seemed to be the perfect fit.

## Deployment

This project's static pages are deployed to Gitlab Pages by GitLab CI, following the steps defined in `.gitlab-ci.yml`.  The static pages can be downloaded from the pipeline artifacts, which can then be run on any web server.  For example, the `jrbeverly.gitlab.io` project can be triggered in `.gitlab-ci.yml` to start a build.  On build, the `jrbeverly.gitlab.io` project will download the static pages from the pipeline artifacts, then deploy using Gitlab Pages.

Read more about [user/group Pages](http://doc.gitlab.com/ee/pages/README.html#user-or-group-pages) and [project Pages](http://doc.gitlab.com/ee/pages/README.html#project-pages).

## Template

The webpage is based on the template designed by [mRova](http://www.mrova.com) available [here](http://www.mrova.com/free-one-page-responsive-html-resume-template/).

[license-badge]: https://img.shields.io/badge/theme-WTFPL-blue.svg?maxAge=2592000
[license-link]: LICENSE

[theme-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[theme-link]: THEME-LICENSE

[build-badge]: https://gitlab.com/jrbeverly/jrbeverly.vcard/badges/master/build.svg
[build-link]: https://gitlab.com/jrbeverly/jrbeverly.vcard/commits/master