# Neovim Configuration of Yuyu's

## Dependencies

* Nodejs
* npm
* pynvim
* ranger
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
