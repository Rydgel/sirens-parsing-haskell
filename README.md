# sirens-haskell

## The new way

### Run

```
stack build
stack exec sirens-exe
```

### Tests

```
stack test
```

Stack can be found [here](https://github.com/commercialhaskell/stack)

## The old way (try to avoid)

### Install

```
cabal sandbox init
cabal install --only-dependencies
```

### Run

```
cabal run
```

### Tests

```
cabal install hspec
cabal tests
```
