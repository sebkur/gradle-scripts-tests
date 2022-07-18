# Testing project for Gradle start scripts

This repository contains multiple instances of a testing project, each
configured with a different versions of Gradle to try out different
behavior of the start scripts created by the different versions of Gradle.

In particular it tests the ability to pass system properties via the
`defaultJvmOpts` parameter and pass an environment variable such as
`$APP_HOME`. Because "$" gets replaced with "\\$", a `doLast`
action is used to remove that escape character.

This hack used to work up until Gradle 6.9.1 but fails with version 6.9.2
and newer.

Run this to build all of the projects and run the scripts created during
build:

    ./build-and-test-all.sh

Here's the output:

    # Testing 'test5.2.1'
    test
    foo='/home/user/github/sebkur/gradle-scripts-tests/test5.2.1/build/install/test'
    # Testing 'test6.5.1'
    test
    foo='/home/user/github/sebkur/gradle-scripts-tests/test6.5.1/build/install/test'
    # Testing 'test6.9.1'
    test
    foo='/home/user/github/sebkur/gradle-scripts-tests/test6.9.1/build/install/test'
    # Testing 'test6.9.2'
    test
    foo='$APP_HOME'
    # Testing 'test7.2'
    test
    foo='$APP_HOME'
    # Testing 'test7.4.2'
    test
    foo='$APP_HOME'

## Resources

* https://mkyong.com/gradle/gradle-application-plugin-app_home-in-applicationdefaultjvmargs/
* https://stackoverflow.com/a/70371278/1268759
* https://stackoverflow.com/a/20968466/1268759
* https://github.com/gradle/gradle/issues/18425
* https://github.com/gradle/gradle/issues/19795
