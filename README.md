# Web Card - jrbeverly
[![build status](https://gitlab.com/jrbeverly/jrbeverly.gitlab.io/badges/master/build.svg)](/../commits/master)

This is a clean and minimalist web card. This is a template to show off online handles (such as Bitbucket, Gitlab or Github). 

## Template

The webpage is based on the template designed by [mRova](http://www.mrova.com) available [here](http://www.mrova.com/free-one-page-responsive-html-resume-template/).

## GitLab CI

This project's static Pages are built by [GitLab CI][ci], following the steps
defined in [`.gitlab-ci.yml`](.gitlab-ci.yml):

```
pages:
  stage: deploy
  script:
  - echo 'No action needed.'
  artifacts:
    paths:
    - "*"
  only:
  - master
```

The project is designed to be in compliance with both [Gitlab Pages](http://doc.gitlab.com/ee/pages/README.html#user-or-group-pages) and [Github Pages](https://pages.github.com/).