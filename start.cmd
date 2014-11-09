@echo off
TITLE FakeClient, bot for Minecraft: Pocket Edition servers
cd /d %~dp0
if exist bin\php\php.exe (
	set PHP_BINARY=bin\php\php.exe
) else (
	set PHP_BINARY=php
)

if exist bin\mintty.exe (
	start "" bin\mintty.exe -h error -t "FakeClient" -w max %PHP_BINARY% src\LegendOfMCPE\PocketBot\PocketBot.php --enable-ansi %*
) else (
	%PHP_BINARY% src\Main.php %*
)