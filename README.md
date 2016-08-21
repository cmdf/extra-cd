# ocd

Change directory with shortcuts in Windows Console.


## usage

```batch
> ocd [-|[-|+|=]<path>]

:: [] -> optional argument
:: <> -> argument value
```

```batch
:: change to DOSBox directory
> ocd "C:\Program Files (x86)\DOSBox-0.74"

:: change to up one directory
> ocd ..

:: stay at current directory (list contents)
> ocd .

:: change to previous directory
> ocd -

:: add current directory as shortcut
> ocd +dosbox

:: change to root directory
> ocd C:\

:: change to DOSBox directory using shortcut
> ocd =dosbox

:: remove DOSBox shortcut
> ocd -dosbox
```
