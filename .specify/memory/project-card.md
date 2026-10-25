# egovframe-mobile-device-api: project context

## Role and maintenance boundary

A Flutter Device API sample application and a Spring Boot Device API web server. Preserve the app/server REST payloads, per-device UUID ownership checks, secure-storage failure behavior, and native permission boundaries.
This card reflects source inspection at adoption; it does not certify runtime behavior.

## Public entry points and evidence

- `README.md`: Java 17, Maven 3.9.9, Spring Boot 3.5.6, app/server division, and UUID/file-ownership patch notes.
- `device-api-app/README.md` and `device-api-app/docs/project_start.md`: app layers, Flutter commands, emulator configuration, and server URL setup.
- `device-api-app/pubspec.yaml`: Dart SDK `^3.9.2`; `device-api-app/android/app/build.gradle.kts`: Java/Kotlin target 17.
- `device-api-app/docs/webserver.md`: database DDL, datasource and file-storage configuration, and Boot Dashboard startup.
- `device-api-web/pom.xml` and `device-api-web/src/test/`: server Maven build and checked-in Java tests.

## Build and verification entry points

From `device-api-app/`, README documents `flutter pub get`, `flutter analyze`,
`flutter run`, `flutter build apk --release`, and `flutter build ios --release`. Use the
appropriate device command after configuring its platform SDK. The server test entry point
from the repository root is `mvn -f device-api-web/pom.xml test`; inspect focused test reports
and server configuration before claiming integration coverage. No app test directory was
found at `device-api-app/test` during adoption; do not describe a nonexistent suite as passing.

## Environment and evidence limits

Dart SDK constraints and README Flutter wording must be interpreted separately. iOS builds
need Xcode and Android builds need an Android SDK; GPS uses an external map key. DB tables,
file storage, server reachability, secure storage, and device permissions require actual
runtime checks. Public fork issue #1 concerns the emulator URL; adoption does not change it.
No application build, test suite, formatter, device test, or external service was run for this
workflow-only adoption. A Spec Kit CLI/status and isolated scaffold smoke validate the tooling
only. No CodeGraph index was present in the adoption workspace; targeted file listing and
exact text inspection supplied the evidence, without installing an indexer.

## Upstream and submission baseline

Upstream: [eGovFramework/egovframe-mobile-device-api](https://github.com/eGovFramework/egovframe-mobile-device-api). Fetch the actual upstream default branch
and record its exact SHA before preparing `upstream-submit`; do not infer the baseline from
fork work. Preserve an existing submission branch or open PR. Adoption changes are pushed
only to fork `work`; an absent `upstream-submit` is created from the fetched upstream SHA
without adoption commits, as a separate submission baseline.
The [constitution](constitution.md) is the policy source for domain cards, verification, and
work-only artifact isolation. Native OMP commands are in `.omp/commands/`; the bundled bug
workflow provides assess, fix, and test stages. No application fix or PR is part of
this adoption.
