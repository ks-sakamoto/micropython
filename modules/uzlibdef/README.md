## MicroPythonにzlib圧縮を拡張するCモジュール
---------------
### 使い方
"""
./micropython
"""
でmicropythonを起動

"""
import uzlibdef
uzlibdef.comp('file1', 'file2')
"""

file1の中身が圧縮されて、file2に書き込まれる

*(修正後)*
"""
import uzlibdef
uzlibdef.comp(data)
"""

圧縮したいデータを渡すと圧縮されたデータが帰ってくる

"""
uzlib.decompression()
"""
で解凍可能
---------------
### ビルド方法（unix）
https://micropython-docs-ja.readthedocs.io/ja/latest/develop/cmodules.html

"""
git clone *************
"""
（micropythonをクローン）
modulesディレクトリをmicropythonディレクトリと同じディレクトリ内へ移動
micropythonディレクトリで
"""
git submodule update --init
"""

mpy-crossディレクトリでmake
ports/unixに移動して
"""
make USER_C_MODULES=../../../modules
"""
---------------
### ビルド方法（esp32）
https://micropython-docs-ja.readthedocs.io/ja/latest/develop/cmodules.html

cmakeファイルを用いてビルド

"""
make USER_C_MODULES=~/esp32/modules/micropython.cmake
"""

ファームウェアをESP32へ書き込む
（ポートへの権限を付与しておく）
"""
PORT=/dev/ttyS* BAUD=921600 make erase
PORT=/dev/ttyS* BAUD=921600 make deploy
"""
