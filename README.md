# Cargo Static Build Docker Action

This action builds sttic linked binaries for rust projects, using [ekidd/rust-musl-builder](https://github.com/emk/rust-musl-builder).

## Inputs

### cmd

Build command, default to `cargo build`.

## Outputs

None.

## Example usage

```yaml
name: Cargo Static Build

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Build and Test
      uses: zhxiaogg/cargo-static-build@master
      with:
        cmd: cargo test
```
