@echo off
title Clear Dispatcher cache
echo *********************** Dispatcher Cache Clear ************************
echo.
echo                                    ************************************
echo                  *********        *     Which Environment to clear ?   *
echo                 ***********        ************************************
echo                *************         **********
echo                *   *****    *       ******
echo                *   *****    *      ****
echo                **************     **
echo                * * *****  * *    *
echo                * * *****  * *
echo                ***************
echo                ***************
echo                ***************
echo                ***************
echo                ***************
echo                ***************
echo                ***************
echo                ***************
echo                ****  ***  ****
echo                 *** **    ***
echo                  ** *     **
echo                    *      *
echo.
echo 1. DEV
echo 2. QA
echo 3. STAGE
set /p id=""
if %id%==1 (
plink -t 10.226.141.xxx sudo /DATA/clearcache.sh
)
if %id%==2 (
plink -t 10.226.141.xxx sudo /DATA/clearcache.sh
)
if %id%==3 (
echo Dispatcher - 1
plink -t 10.226.141.xxx sudo /DATA/clearcache.sh
echo Dispatcher - 2
plink -t 10.226.141.xxx sudo /DATA/clearcache.sh
)
pause