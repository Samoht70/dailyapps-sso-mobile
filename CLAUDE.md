# CLAUDE.md — dailyapps-sso-mobile

Application Flutter de **DailyApps SSO**. Part of the `dailyapps-sso` spec-kit
workspace: open the agent session at the workspace root, one level up, never
here — specs live above this directory.

## Status

The repository is empty: the Flutter application is not scaffolded yet. Once it
is, run `/init` here to replace this file with the real conventions, and follow
the `flutter:*` skills — `flutter:osdd-structure` for the layout,
`flutter:laravel-rest-api` for talking to the api repo.

## Install, run, test

Not yet applicable — no `pubspec.yaml`.

## Commits

Trunk is `main`. Feature branches are cut from it by the workspace's
`speckit.multirepo.branch` hook, one per spec-kit feature.

This repo consumes the api. A merge request here stays open until the endpoint
it calls is merged and deployed on `dailyapps-sso-api`'s trunk.
