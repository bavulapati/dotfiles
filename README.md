# dotfiles & bootstrap

## Prerequisites

- Requires command line developer tools, which can be installed using

```
xcode-select --install
```

- Requires [homebrew](https://brew.sh) package manager, to install required software
- Requires [make](https://www.gnu.org/software/make/) to run the Makefile

```
brew install make
```

## GPG

### Import your public key

```
gpg --import your-public-key.asc
```

### Connect the Yubikey and link it

- Plug in your YubiKey, then run:

```
gpg --card-status
```

- This should display your YubiKey's card info and automatically associate the private key stubs with the card. If GPG recognizes the card but doesn't link it, run:

```
gpg --card-edit
# Inside the prompt:
fetch
quit
```

- Verify the key is linked (you should see ssb> with a > indicating it's on the card):

```
gpg --list-secret-keys
```

### Set key trust

- Trust your own key so GPG stops warning about it:

```
gpg --edit-key <YOUR_KEY_ID>
# Inside the prompt:
trust
# Choose 5 (ultimate)
quit
```

## Password Store

- Clone your Password Store to ~/.password-store

## TMUX

- Install tmux plugins using `prefix + I`
