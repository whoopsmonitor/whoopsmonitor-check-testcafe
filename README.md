# whoopsmonitor-check-testcafe

Runs [TestCafé](https://devexpress.github.io/testcafe/), my personal favorite node.js tool to automate end-to-end web testing.

## Available browsers

This check supports chromium.

## Build

```sh
docker build -t whoopsmonitor-check-testcafe .
```

## Run - chromium

Workdir of the running container is in `/tests` directory. So you have to mount it with the file/folder where you have your own tests.

Folder example:

```bash
docker run --rm -it -v $(pwd)/src:/whoopsmonitor-worker/NOT_DEFINED whoopsmonitor-check-testcafe tests/
```

`NOT_DEFINED` is just a dummy directory. Don't worry about it.

File example:

```bash
docker run --rm -it -v $(pwd)/src/index.js:/whoopsmonitor-worker/NOT_DEFINED/index.js whoopsmonitor-check-testcafe /tests/index.js
```

-   `-it` Do not forget to run the container with interactive terminal.
