# Neovim Configuration of Yuyu's

## Dependencies

* Nodejs

* npm

* ranger

  ```
  $ sudo pacman -S nodejs npm ranger
  ```

* pynvim

  ```
  $ pip install pynvim
  ```

  

* clangd (auto install by the command below)

## Commands To Execute After Clone

* To install all plugins
    ```
    :PlugInstall
    ```
* To install coc extensions
    ```
    :CocInstall coc-json coc-python coc-vimlsp coc-clangd coc-explorer
    ```
* To install clangd
    ```
    :CocCommand clangd.install
    ```
    (It's weird that you have to first open a random C file, then will coc be able to find this command.)
