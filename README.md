# vim-FORTRAN-UPPER

Uppercase Fortran keywords without holing <kbd>Shift</kbd> or using <kbd>CAPS LOCK</kbd>.
Based on [vim-SQL-UPPER](https://github.com/Jorengarenar/vim-SQL-UPPER) by Jorengarenar.

## Installation


#### [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'wcdawn/vim-FORTRAN-UPPER'
```

#### Vim's packages
```bash
cd ~/.vim/pack/plugins/start
git clone https://github.com/wcdawn/vim-FORTRAN-UPPER.git
```

## Usage

When you type a Fortran keyword in an Fortran file, it will be automatically uppercased after you finish writting it.

Words in comments and strings will be ignored.

## Configuration

There is one variable, `g:FORTRAN_UPPER`. Default value is `0` (no capitalization applied by default).
|  Value | Description |
|:------:|:------------|
|    1   | Keywords based on SIMULATE5 style from SSP.
|    2   | Extensive list of keywords based on style from [nfherrin](https://github.com/nfherrin).
|    5   | Keywords returned by vim's `syntaxcomplete#OmniSyntaxList()` function |
| `list` | You can provide your own list of keywords, e.g. `let g:FORTRAN_UPPER = [ "implicit", "none" ]` |
|    *   | Everything else disables auto-uppering |

