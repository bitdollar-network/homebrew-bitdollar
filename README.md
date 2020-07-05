# homebrew-bitdollar
Official bottle of bitdollar 

**Important: reporting issues with any of these brews should be done at their respective repositories ([Dollar](https://github.com/bitdollar/dollar) and [Paper](https://github.com/bitdollar-network/paper)).**

## Installation

```
brew tap bitdollar-network/dollar
```

### Dollar - C++ implementation for dollar protocol
```
brew install dollar
```

### Paper - The Contract-Oriented Programming Language

To install the latest release:
```
brew install paper
```

Note: the older releases are provided as a convenience but they are not maintained forever.

## After Installing

### Dollar client
`dollar`

### Paper
`paperc`


## Development
Get the latest development version with the `--devel` flag.

### Dollar client
```
brew reinstall dollar --devel
```

### Current branches

C++:
* `--devel` is on develop branch


## Upgrading

```
brew update && brew upgrade
```

## Minor updates

### C++ client
```
brew update && brew reinstall dollar
```


## Versions
List available versions with:
```
ls -l /usr/local/Cellar/dollar
```

You can switch with if you have other versions installed:
```
brew switch dollar <version>
```
Or follow this [StackOverflow answer](http://stackoverflow.com/a/9832084/2639784)

These brews can be installed via the raw GitHub URLs, or by cloning this
repository locally with `brew tap bitdollar-network/dollar`. You can also install binary
bottles directly with `brew install <bottle_url>`.


## Troubleshooting

- Use `--verbose` to get more info while installing.
- Make sure to update XCode and the command line tools.
- Use `brew update` and `brew upgrade`
- Fix what the `brew doctor` says.
- Reinstall dependencies: `brew reinstall boost --c++11 --with-python`
- Make changes to `/usr/local/Library/Taps/bitdollar-network/homebrew-bitdollar/dollar.rb`
- Reinstall with `brew reinstall dollar.rb` (send a pull request!)

Note that the `dollar` keg exists in [`homebrew-core`](https://github.com/Homebrew/homebrew-core/blob/master/Formula/dollar.rb). It's not always up to date in `homebrew-core`. Therefore, if you want to use the version from this tap instead, you can pin this tap by running the following command:

```shell
brew tap-pin bitdollar-network/dollar
```

## Patching

First `cd /Library/Caches/Homebrew/dollar--git/` and make some changes. Then `git diff > some.patch`, copy/paste the content of the patch under `__END__` of `dollar.rb` and replace the `def patches` block with:

```
def patches
  DATA
end
```

### Pull Request
If you want to create a pull request, save your patch in a gist. Add your `option 'some-option', 'Some description'` and the URL to your gist in the patches block and send a pull request. Make sure to send a pull request to Bitdollar as well!
