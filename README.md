[![Netlify Status](https://api.netlify.com/api/v1/badges/e2de758f-8141-4a0e-af61-d439cca512a7/deploy-status)](https://app.netlify.com/sites/lukasretschmeier/deploys)

# Welcome to My Webpage

Current software versions can be found here: netlify.toml. Some things can also be passed as an netlify environent variable.

* CSS Resource Problems mentioned here: https://discourse.gohugo.io/t/error-building-site-postcss/31766/2

# Local Build:

First locally install the correct version of hugo (instructions for MacOS)

    mkdir -p .tools/hugo-0.119.0
    curl -L \  https://github.com/gohugoio/hugo/releases/download/v0.119.0/hugo_extended_0.119.0_darwin-universal.tar.gz \   -o .tools/hugo-0.119.0/hugo.tar.gz
    tar -xzf \.tools/hugo-0.119.0/hugo.tar.gz \-C .tools/hugo-0.119.0
    ./.tools/hugo-0.119.0/hugo version


Now install the precise node dependencies and run it.

    cp themes/wangchucheng.com/hugo-eureka/package.json .
    cp themes/wangchucheng.com/hugo-eureka/package-lock.json .

    npm ci

    ./.tools/hugo-0.119.0/hugo --gc --minify
