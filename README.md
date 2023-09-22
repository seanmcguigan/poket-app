![development workflow](https://github.com/seanmcguigan/poker-app/actions/workflows/development-cd.yaml/badge.svg)

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
Wed 13 Sep 15:38:50 IST 2023
Wed 13 Sep 15:39:14 IST 2023
Wed 13 Sep 15:39:36 IST 2023
foo
bar
bug fix
new feature
nice hols
blahblahblah
bill
ben
this is Peter
