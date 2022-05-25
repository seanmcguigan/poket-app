![development workflow](https://github.com/seanmcguigan/poker-app/actions/workflows/development-cd.yaml/badge.svg)


[![PR Workflow](https://github.com/seanmcguigan/poker-app/workflows/pull%20request%20validation/badge.svg)](https://github.com/seanmcguigan/poker-app/actions?query=workflow%3A"pull request validation")


## poker-app

#### tag for release - v1.0.0

#### commit messages vs what they do

| Commit message                                                                         | Tag increase |
| -------------------------------------------------------------------------------------- | ------------ |
| `fix: fixed something`                                                                 | Patch        |
| `feat: added new button to do X`                                                       | Minor        |
| `fix: fixed thing xyz`<br><br>`BREAKING CHANGE: this will break users because of blah` | Major        |
| `fix!: fixed something`                                                                | Major        |
| `feat!: added blah`                                                                    | Major        |
| `chore: foo`                                                                           | Nothing      |

```date > ./src/date && docker build -t docker.io/seanmcguigan/poker:foobar . -f Docker/Dockerfile```

PodSecurityAdmission
https://kubernetes.io/docs/concepts/security/pod-security-admission/
