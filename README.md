### As a basic app was taken from ios-ui-testing-tutorial
The starter code for the UI Testing Tutorial YouTube video. 
- [UI Testing iOS Tutorial](https://youtu.be/rmKbsQ41wVY)

## test structurte (no POM)
I expended current tutorial and created a couple separate classes as `base class` for custome `func`
which we will use in test also couple ideas where keep `stings`, use `enum` and initialazie `indetifier` for UI element with `UI label`.

## test structurte (POM)
Added `POM` pattern for better visability, in folder `POM` via creating `protocol` and `struct` instance. 

## for localization
Was create a `Test Plan` where in config marked two copnfiguration for `English US` and `German`. If you choose that `Test Plan` in `scheme` 
(actualy app doesn't have to languages) test runner will run all tests twice. 

## CI setting
After clone project open main folder `ios-ui-testing-tutorial` you will find two files:
- `singleRun.sh`
- `6sims.sh` (6 simulators will rune in parallel)
By default only 4 simulators can be run and when any of them will completed test suit/suits will open next one. 

## CI Run
To Run UI test in terminal you can need use `.sh` files. 
- `sh filename.sh`
- some times you need first inititalize useing `sh` command before. 

## CI Report
For visualize report in terminal, make it more readable use [xcbeautify](https://github.com/thii/xcbeautify`).

In `.sh` files `xcbeautif` report library already added. 

## .gitignore

1. Create Global config alias - One time only
`git config --global alias.ignore '!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi'`

2. For each Project (note ANGLE BRACKETS ARE NOT ALLOWED IN A YOUTUBE DESCRIPTION
Change the ] below to a 'greater than' angle bracket

`cd `--directory where your project is stored--
`git ignore swift,macos ].gitignore`
`git add .gitignore`
`git commit -m "Add .gitignore file"`

Well explanation find [here](https://youtu.be/UPkBC48NHnQ)
