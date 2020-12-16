# vim-fzf-picker

Use fzf **natively** in Vim.

![fzf-picker](https://user-images.githubusercontent.com/1141198/102230088-696da580-3f27-11eb-90df-c1c40e09025f.gif)

## Usage

```
:FzfPick
```

`fzf-picker` doesn't have default mappings, you would be better
config yourself. like:

```viml
nnoremap <c-p> :FzfPick<CR>

" In case your vim included patch-8.2.1978
noremap <c-p> <Cmd>FzfPick<CR>
```

## How to install

```viml
Plug  'unclebill/vim-fzf-picker'
```

## Alternatives

- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)
- [ctrlpvim/ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim/)

## License

MIT

## Author

unclebill
