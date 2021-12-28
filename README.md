### As a basic work was taken from ios-ui-testing-tutorial
The starter code for the UI Testing Tutorial YouTube video. 
- [UI Testing iOS Tutorial](https://youtu.be/rmKbsQ41wVY)


## test structurte 
I expended current tutorial and created a couple separate classes as `base class` for custome `func`
which we will use in test also couple ideas where keep `stings`, use `enum` and initialazie `indetifier` for UI element with `UI label`.

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
