### The purpose of this config

The config files in this folder publish coordinated Maven snapshots.

The following actions will be taken.

1. Checkout and pull the configured repositories on `master`, including `http-client`.
2. Build/install the foundational `light-4j` modules locally, with their tests.
3. Build/install/deploy `http-client` first, then the complete `light-4j` reactor,
   followed by the remaining repositories in the configured order.

Changelog generation, checkin, GitHub release notes, deployment commands, and
asset upload are currently skipped by the snapshot configuration.

The preparation build uses:

```sh
mvn clean install -pl status,monad-result,config,client-config,cluster -am
```

It supplies the framework artifacts needed by the client without selecting
framework modules that depend on the client. A failed preparation stops before
publication. Preparation still runs with `skip_release: true`; set
`skip_prepare: true` only when intentionally reusing an already completed build.

The configuration uses `version: 2.4.1-SNAPSHOT` and `prev_tag: 2.4.0`. No
repository-specific previous-tag override is needed after both repositories
have the `2.4.0` tag. Changelog generation is currently disabled.

Before running, align the project versions and dependency properties in the
release workspace: `http-client` and its `version.light-4j`, `light-4j` and its
`version.http-client`, and downstream client consumers must use the intended
snapshot versions. The YAML `version` does not rewrite Maven POMs. This sequence
does not make publication atomic or wait for remote repository propagation;
local installation supplies the dependencies for the ordered builds.


### Prepare the environment

This is a one time work and all other light-bot tasks in light-config-test won't need to do it again.
If this is your first time to use light-bot, then  you need to checkout both light-bot and light-config-test
repository to a workspace.

I am using networknt under my user home directory as workspace and all scripts are based on that assumtpion. If
you want use another folder as your workspace, please fork the light-config-test repo and update the scripts
accordingly.

```
cd ~
mkdir networknt
git clone https://github.com/networknt/light-bot.git
git clone https://github.com/networknt/light-config-test.git
cd light-bot
mvn clean verify
```

Now you should have light-bot built already.

### To start the command line

```
java -Dlight-4j-config-dir=./config -Dlogback.configurationFile=./logback.xml -jar ~/networknt/light-bot/bot-cli/target/bot-cli.jar -t release-maven
```

Current light-bot requires JDK 25 or newer to build and run, and Maven 3.6.3 or newer to build.
