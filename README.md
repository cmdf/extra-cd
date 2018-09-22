Change directory with shortcuts in Windows Console.
> 1. Download [console script](https://raw.githubusercontent.com/winp/extra-cd/master/ecd.cmd).
> 2. Copy to `C:\Program_Files\Scripts`.
> 3. Add `C:\Program_Files\Scripts` to `PATH` environment variable.


```batch
> ecd [-|[-|+|=]<path>]

:: [] -> optional argument
:: <> -> argument value
```

```batch
:: change to DOSBox directory
> ecd "C:\Program Files (x86)\DOSBox-0.74"

:: change to up one directory
> ecd ..

:: stay at current directory (list contents)
> ecd .

:: change to previous directory
> ecd -

:: add current directory as shortcut
> ecd +dosbox

:: change to root directory
> ecd C:\

:: change to DOSBox directory using shortcut
> ecd =dosbox

:: remove DOSBox shortcut
> ecd -dosbox

:: add relative path shortcut
> ecd +up3 ../../..

:: go up 3 directories
> ecd =up3

:: remove relative path shortcut
> ecd -up3
```
<br><br>


[![Merferry](https://i.imgur.com/Ki9lyzP.jpg)](https://merferry.github.io)
