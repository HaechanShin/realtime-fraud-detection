@echo off
echo Creating project folder structure...

REM Main directories
mkdir data models src mlops streaming api notebooks tests docs scripts config

REM Data directories
mkdir data\raw data\processed data\synthetic

REM Models directories
mkdir models\anomaly_detection models\graph_analysis models\time_series models\ensemble

REM Source code directories
mkdir src\data_processing src\feature_engineering src\training src\inference src\utils

REM MLOps directories
mkdir mlops\pipelines mlops\deployment mlops\monitoring mlops\experiments

REM Streaming directories
mkdir streaming\kafka_setup streaming\producers streaming\consumers streaming\processors

REM API directories
mkdir api\routes

REM Other directories
mkdir notebooks tests docs scripts config

echo Folder structure created successfully!
echo.
echo Now creating .gitkeep files...

REM Create .gitkeep files in all directories
for /d /r %%i in (*) do (
    if not exist "%%i\.git" (
        type nul > "%%i\.gitkeep"
    )
)

echo .gitkeep files created!
echo.
pause