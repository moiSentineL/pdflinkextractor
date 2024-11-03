# pdflinkextractor

Originally made by [Glutanimate](https://askubuntu.com/a/395155).

## Usage
### Bash One Liner

```bash
curl -fsSL https://nibirsan.org/pdflinkextractor/script.sh | sh -s - [-d] <website> 
```

Using `-d` will enable you to download the files instead of just saving the links. 

### Local

```bash
git clone https://github.com/moiSentineL/pdflinkextractor.git
cd pdflinkextractor && chmod +x script.sh
./script.sh
```

> [!TIP]
> Alias it for better access.

## Dependencies

You have to have `wget` and `lynx` installed:

### Ubuntu

```bash
sudo apt-get install wget lynx
```

### Arch Linux

```bash
sudo pacman -S wget lynx
```