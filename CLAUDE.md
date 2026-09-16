# CLAUDE.md — dailyapps-sso-mobile

Application Flutter de **DailyApps SSO**. Part of the `dailyapps-sso` spec-kit
workspace: open the agent session at the workspace root, one level up, never
here — specs live above this directory.

## Status

Scaffolded skeleton only. No business feature and no application screen exist
yet — the specs are not written. `MaterialApp.home` is an empty `Scaffold` on
purpose; replace it with the first functional layer, do not grow features
outside one.

## Layout

Follow `flutter:osdd-structure`. The app is a single package; layers live under
`lib/layers/`.

```text
lib/
  main.dart
  app.dart
  layers/
    technical/
      api_client/      Dio + laravel_rest_api_flutter wiring
      configuration/   compile-time config read from --dart-define
      theme/           tokens, ThemeData, ThemeCubit
    functional/        one folder per business domain (none yet)
```

No `core/`, `common/`, `shared/` or `utils/` folder — ever. Functional layers
follow Clean Architecture (`domain/`, `data/`, `presentation/`) and never import
another functional layer's `data` or `presentation`.

State is `flutter_bloc`, Cubit by default (`flutter:state-management`). Colors,
text styles and spacing come from `Theme.of(context)` and the tokens in
`layers/technical/theme/` — never literals in a widget (`flutter:theming`).

## Install, run, test

The Flutter SDK is installed locally at `~/flutter` (stable 3.47.4, Dart 3.13.3)
and exported from `~/.zshrc`. It is not containerised, unlike the `api` and
`front` repos.

```sh
flutter pub get
flutter analyze
flutter test
flutter run --dart-define=API_BASE_URL=https://<host>/api
flutter build web --release --dart-define=API_BASE_URL=https://<host>/api
```

`API_BASE_URL` has no default: `main()` asserts it was injected, so a forgotten
flag fails loudly in debug. Never commit a key, token or environment URL in Dart
source (`flutter:env-config-no-secrets`).

Android builds need an Android SDK and a JDK, neither installed on this machine.
iOS builds need macOS and Xcode. Only the web target builds here today.

## API access

The `api` repo runs `lomkit/laravel-rest-api`. Talk to it exclusively through
`laravel_rest_api_flutter` repositories declared in a functional layer's `data/`
folder (`flutter:laravel-rest-api`) — never raw Dio calls, never a hand-built
`search` / `mutate` envelope. `ApiClient.create()` supplies the `RestApiClient`.

## Commits

Trunk is `main`. Feature branches are cut from it by the workspace's
`speckit.multirepo.branch` hook, one per spec-kit feature.

This repo consumes the api. A merge request here stays open until the endpoint
it calls is merged and deployed on `dailyapps-sso-api`'s trunk.
