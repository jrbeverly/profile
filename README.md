# Web Card - jrbeverly
[![Build Status][ci-badge]][ci][![WTFPL License][theme-badge]][theme][![MIT License][license-badge]][license][![Website][site-badge]][site]

This is a clean and minimalist web card. This is a template to show off online handles (such as Bitbucket, Gitlab or Github).

## GitLab CI

This project's static Pages are built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps
defined in [`.gitlab-ci.yml`](.gitlab-ci.yml):

```
pages:
  stage: deploy
  script:
  - echo 'No action needed.'
  artifacts:
    paths:
    - public
  only:
  - master
```

The project is designed to be in compliance with [Gitlab Pages](http://doc.gitlab.com/ee/pages/README.html#user-or-group-pages).

## GitLab User or Group Pages

To use this project as your user/group website, you will need one additional
step: just rename your project to `namespace.gitlab.io`, where `namespace` is
your `username` or `groupname`. This can be done by navigating to your
project's **Settings**.

Read more about [user/group Pages](http://doc.gitlab.com/ee/pages/README.html#user-or-group-pages) and [project Pages](http://doc.gitlab.com/ee/pages/README.html#project-pages).

## Template

The webpage is based on the template designed by [mRova](http://www.mrova.com) available [here](http://www.mrova.com/free-one-page-responsive-html-resume-template/).

[ci-badge]: /../badges/master/build.svg
[ci]: /../commits/master
[theme-badge]: https://img.shields.io/badge/theme-WTFPL-blue.svg?maxAge=2592000
[theme]: /../blob/master/THEME-LICENSE
[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[license]: /../blob/master/LICENSE
[site-badge]: https://img.shields.io/badge/website-view-green.svg?maxAge=2592000
[site]: https://jrbeverly.gitlab.io/