@echo off
:: 本工具由Cesium官方团队开发gltf-pipeline封装而成 [https://github.com/CesiumGS/gltf-pipeline]
:: 运行环境node+gltf-pipeline                      [npm install -g gltf-pipeline]
:: 使用说明：放在待处理gltf文件夹下，双击bat文件即可
:: 命令说明：1、out2转化为gltf2.0文件；2、outb转化为glb文件；3、outf转化为gltf文件；4、outs压缩gltf文件
:: 生成文件：在工具目录下会新建output文件夹，根据所选功能分别创建对应文件夹：glTF2.0、glb、gltf、small_gltf
setlocal 

:: 工具使用快捷命令
echo Used for batch conversion glTF Tools
echo.
echo ------------------------------------
echo 1. glTF1.0 To glTF2.0         [out2]
echo 2. glTF To glb                [outb]
echo 3. glb To glTF                [outf]
echo 4. gltf/glb To smaller        [outs]
echo ------------------------------------
echo.

:: 初始化gltf/glb文件计数器
set /a gltf_file_count = 0 
set /a glb_file_count = 0 


for %%G in (*.gltf) do (
	set /a gltf_file_count+=1
)
for %%G in (*.glb) do (
	set /a glb_file_count+=1
)

:: 输出文件的个数
echo The number of glb : %glb_file_count%
echo The number of glTF : %gltf_file_count%
echo.
echo ------------------------------------
:: 提示用户选择功能
echo Please enter a command [out2/outb/outf/outs] :
set /p toolChoice="Enter your want to do: "


:: 根据用户输入执行相应操作
if "%toolChoice%"=="out2" (
	echo.
	echo doing All glTF1.0 To glTF2.0...
	for %%f in (*.gltf) do (
		gltf-pipeline -i %%f -o output/gltf2.0/%%f 
	)
    echo Successfully processed glTF: %gltf_file_count%!
	echo.
) else if "%toolChoice%"=="outb" (
	echo.
	echo doing All glTF To glb...
	for %%f in (*.gltf) do (
		gltf-pipeline -i %%f -o output/glb/%%~nf.glb
	)
    echo Successfully processed glTF: %gltf_file_count%!
    echo.
) else if "%toolChoice%"=="outf" (
    echo.
	echo doing All glb To glTF...
	for %%f in (*.glb) do (
		gltf-pipeline -i %%f -o output/gltf/%%~nf.gltf
	)
    echo Successfully processed glb: %glb_file_count%!
    echo.
) else if "%toolChoice%"=="outs" (
    echo.
	echo doing All glTF To smaller...
	for %%f in (*.gltf) do (
		gltf-pipeline -i %%f -o output/small_gltf/%%~nf.gltf -d
	)
    echo Successfully processed glTF: %gltf_file_count%!
    echo.
) else (
    echo Error Command: %toolChoice%
)

:: 等待用户按键后退出
pause
endlocal

