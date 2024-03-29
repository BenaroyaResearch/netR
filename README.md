
<!-- README.md is generated from README.Rmd. Please edit that file -->

# netR

<!-- badges: start -->

[![R-CMD-check](https://github.com/BenaroyaResearch/netR/workflows/R-CMD-check/badge.svg)](https://github.com/BenaroyaResearch/netR/actions)
[![Codecov test
coverage](https://codecov.io/gh/BenaroyaResearch/netR/branch/main/graph/badge.svg)](https://app.codecov.io/gh/BenaroyaResearch/netR?branch=main)
<!-- badges: end -->

## Installation

You can install `netR` from GitHub:

``` r
install.packages("devtools")
devtools::install_github("BenaroyaResearch/netR")
```

## Repository

Repository uses Github Actions and codecov. See badges above.

### renv

`renv` is an R package for dependency management.
[renv](https://rstudio.github.io/renv/articles/renv.html) helps keep
same versions of packages used for all collaborators. <br/> It is
encouraged to keep `netR` dependencies as few as possible (0 dependency
and light-weight `data.table` for data manipulation is recommended).

### GitHub Actions

There are 2 workflows in GH Actions: `R-CMD-check` and `test-coverage`.
<br/>

After each push to the remote repository, automated checks are
performed. `R CMD Check` runs all package unit tests and checks if the
package can be installed on most popular platforms - MacOS, Windows and
Linux. <br/>

Code coverage reports are generated for `main` branch only.

### Code coverage

To measure test coverage of `netR` codebase, `covr` package is used (See
workflows in GitHub Actions).

### Readme

This Readme is generated from `README.Rmd`. To update this file, modify
`.Rmd` file in the package and rebuild using: <br/>
`devtools::build_readme()` or knit `README.Rmd` - `Cmd + Shift + Enter`
(Windows `Ctrl + Shift + Enter`).

## Development workflow

1.  Clone the repository
    `git clone https://github.com/BenaroyaResearch/netR.git`

2.  Create a development branch with name indicating what changes the
    branch is going to introduce - `git checkout -b <branch_name>`

3.  Open `netR.Rproj` file and call `renv::restore()`. This updates
    packages versions to the ones that are specified in `renv.lock`
    file. If needed, packages will be installed. This applies only to
    the `netR` project on your machine. If you need to install and use
    another package, use `install.packages()` and then update
    `renv.lock` file using `renv::snapshot()` (so the next person can
    `renv::resotre()`). If you face troubles installing packages when
    using `renv`, you might need change the download method with
    `Sys.setenv(RENV_DOWNLOAD_METHOD = "libcurl")` for `libcurl` or
    `wininet`.

4.  Add `.R` file with a new function(s) or add to an existing file

5.  Add unit tests (recommended)

6.  Run `devtools::document()` to update functions’ `man` files and
    `NAMESPACE`,  
    `devtools::test()` to run your unit test and check if they all pass
    and `devtools::check()` to run `R CMD check` locally. If unit tests
    and cmd-check is not run locally, it will be run by GitHub anyway.

7.  Increment version in `DESCRIPTION` file and add new line to
    `ver_log.md` file. If this is your first contribution to the
    package, remember to add yourself to `Author` field in `DESCRIPTION`
    file.

8.  Push your code to remote: `git push -u origin <branch_name>`

9.  Open a *Pull Request* for your branch. After passing `R-CMD-check`
    and getting approval from other collaborator, merge your development
    branch into `main`

10. Switch to `main` branch with `git checkout main` and sync your local
    with remote branch using `git pull origin main`

### Merging into main branch

`main` is a *protected* branch, meaning that you cannot push directly to
it. To merge code you should create a *pull request* from your
development branch. At least one reviewer needs to approve your *PR* to
be able to merge into `main`. <br/> All required GitHub Actions
workflows must pass (`R-CMD-check`). This prevents merging not
working/incompatible code into `main`.

### Unit tests

Package uses `testthat` for unit testing. <br/> Tested functions are
encouraged - when working with networks it is sometimes easy to
introduce a bug. Assertions of what we think a function does and what
actually happens is easier when using unit tests.

### Versioning

[Semantic versioning](https://semver.org/) is used. In short: <br/>
`MAJOR.MINOR.PATCH` (e.g. `0.2.1`) <br/> `MAJOR` - for incompatible
changes that possibly break existing code <br/> `MINOR` - adding new
functions to the package <br/> `PATCH` - bug fixes and minor changes
<br/>

### Code of conduct

1.  All contributors are welcome
2.  We are kind
