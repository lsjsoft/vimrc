@echo off
:: 复制配置文件
echo ^-^-^> start install .vimrc"
copy /y ".vimrc" "%USERPROFILE%"
:: 复制.vim文件夹
echo ^-^-^> copy .vimrc to user dir
xcopy /e/y/i/f ".vim" "%USERPROFILE%\.vim"
echo ^-^-^> install successfully
