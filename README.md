# GitHub Creat-React-App Test Runner
GitHUb action to run CRA test script

## Setup
Must utilize "react-scripts" or preferably, be used on app scaffolded using [create-react-app](https://github.com/facebook/create-react-app) scripts.

## Usage

```
name: CRA Tests

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:d
    - uses: actions/checkout@v2
    - name: Run CRA Scripts
      uses: asilluron/cra-action@0.0.2
```

### With args 

```
name: CRA Tests

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:d
    - uses: actions/checkout@v2
    - name: Run CRA Scripts
      uses: asilluron/cra-action@0.0.2
      with:
        rsArgs: --env=jest-environment-jsdom-sixteen
```
        
## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).