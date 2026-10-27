### The purpose of this config

The config files in this folder is to release all modules in networknt org to maven central.

The following actions will be taken.

1. Checkout and pull the configured repositories on `master`, including `http-client`.
2. Build/install the foundational `light-4j` modules locally, with their tests.
3. Generate and check in `CHANGELOG.md` for the configured release repositories.
4. Build and publish `http-client` first, then the complete `light-4j` reactor,
   followed by the remaining repositories in the configured order.
5. Publish GitHub release notes. Deployment and asset upload are currently skipped.

The preparation build uses:

```sh
mvn clean install -pl status,monad-result,config,client-config,cluster -am
```

It installs the parent POM and foundational modules required by `http-client`
without building the framework modules that depend on it. A failed preparation
stops the task before changelog checkin or publication. Preparation still runs
with `skip_release: true`; set `skip_prepare: true` only when intentionally
reusing a completed local build.

Before the next coordinated release, update `version` and the release POMs.
The configuration's `version` does not change Maven artifact versions. Align
the `http-client` project version and its `version.light-4j`, the `light-4j`
project version and its `version.http-client`, and downstream client consumers
(including the Lambda projects). All must refer to the intended release
versions. Extend the version-upgrade configuration to maintain this alignment
on subsequent cycles; it currently does not include `http-client`.

`prev_tags.networknt/http-client` starts at `1.0.18` because its previous tags
differ from the framework tags. After the first coordinated release, update
that override to the previous shared tag or remove it when the global
`prev_tag` applies. Each previous tag must exist locally and be an ancestor of
the repository's HEAD.

This sequence uses separate Central publications. The client may become
visible before its new framework dependencies; a local installation does not
make those dependencies available to other consumers. Validate the release
pair after both publications complete. This change does not add coordinated
staging or wait for Central propagation.


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
