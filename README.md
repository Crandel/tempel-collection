Collection of the templates to Emacs [TempEl](https://github.com/minad/tempel) package

# About this collection

Template files are placed to directory `templates` as lisp data `<mode>.eld` files.

# Instalation

## Clone the repository to the directory you want

```
git clone https://github.com/Crandel/tempel-collection.git
```

## Setup **tempel-path**

In order to use templates you need to setup your `tempel-path`

```
;; Set tempel-path
(setq-default tempel-path (expand-file-name "templates/*.eld" (file-name-directory user-emacs-directory)))
```

In my case I use `~/.cache/emacs` as `user-emacs-directory`, so the full path to templates will be `~/.cache/emacs/templates` directory.

# Usage

Just use type the key part and call tempel-expand or tempel-insert in one of the modes from *templates* directory
