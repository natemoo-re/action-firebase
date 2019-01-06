# GitHub Action for Firebase

This Action wraps the [Firebase CLI](https://github.com/firebase/firebase-tools) to enable common Firebase commands.

## Usage

```workflow
workflow "Deploy on Firebase" {
  on = "push"
  resolves = ["deploy"]
}

action "deploy" {
  uses = "natemoo-re/action-firebase@master"
  args = "deploy"
  secrets = [ "FIREBASE_TOKEN" ]
}
```

### Secrets

* `FIREBASE_TOKEN` - **Required**. The token to use for authentication with the Firebase API, which can be generated by running `firebase login:ci` locally ([more info](https://github.com/firebase/firebase-tools#using-with-ci-systems))

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

Container images built with this project include third party materials. See [THIRD_PARTY_NOTICE.md](THIRD_PARTY_NOTICE.md) for details.
