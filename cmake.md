---
title: CMake
layout: 2017/sheet
category: CLI
updated: 2020-07-26
---

## Basic usage

### 字符串相关

```cpp
// 切割字符串
STRING(REPLACE ":" ";" SEXY_LIST $ENV{MYINCLUDE})
```

### 匹配目录下的所有文件夹

```cmake
file(GLOB_RECURSE HEADER_FILES LIST_DIRECTORIES true
        path1
        path2
        path3)
foreach (header_file ${HEADER_FILES})
    include_directories(${header_file})
    # MESSAGE(STATUS "include: ${header_file}")
endforeach ()
```

### 匹配目录下的所有源文件

```cmake
file(GLOB_RECURSE SOURCE_FILES
        path1/*.cpp
        path2/*.cpp
        path3/*.cpp)
add_executable(test_exec ${SOURCE_FILES})
```

### 使用环境变量依赖外部头文件

```bash
export MYINCLUDE=/home/name/include1:/home/name/include2
```

```cmake
STRING(REPLACE ":" ";" SEXY_LIST $ENV{MYINCLUDE})

# foreach`迭代的字符串需要用`;`分割, 先替换掉`:`
foreach(path ${SEXY_LIST})
    include_directories(${path})
    # MESSAGE( STATUS "include: ${path}")
endforeach()
```

### 使用环境变量增加搜索路径

```cmake
string(REPLACE ":" ";" SEXY_LIST $ENV{CMAKE_PREFIX_PATH})
foreach (path ${SEXY_LIST})
    list(APPEND CMAKE_PREFIX_PATH ${path})
    message(STATUS "include: ${path}")
endforeach ()
message(STATUS "include: ${CMAKE_PREFIX_PATH}")
```


## Tips

### Specify the install directory

```bash
cmake . -DCMAKE_INSTALL_PREFIX=${your_path}
```

```cmake
set(CMAKE_INSTALL_PREFIX your_path)
```

### Specify compiler

```cmake
set(CMAKE_C_COMPILER    gcc)
set(CMAKE_CXX_COMPILER  g++)
set(CMAKE_CXX_COMPILER  clang++)
```

### Specify STL version

```cmake
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
```

### Specify compiler flags

```cmake
set(CMAKE_CXX_FLAGS   "-std=c++11")
set(CMAKE_CXX_FLAGS   "-g")
set(CMAKE_CXX_FLAGS   "-Wall")

set(CMAKE_CXX_FLAGS_DEBUG   "-O0")
set(CMAKE_CXX_FLAGS_RELEASE "-O2 -DNDEBUG")
```

### Judge OS

```cmake
if(WIN32) #or if(MSVC OR MSYS OR MINGW)
  message(STATUS "Now is windows")
elseif(APPLE)
  message(STATUS "Now is Apple systens.")
elseif(UNIX AND NOT APPLE)
  message(STATUS "Now is UNIX-like OS's.")
endif()
```

```cmake
if(CMAKE_SYSTEM_NAME STREQUAL "Windows")
  message(STATUS "Now is windows")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")
  message(STATUS "Now is Apple systens.")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
  message(STATUS "Now is UNIX-like OS's.")
endif()
```

### Use pthread in MacOS

```cmake
if (APPLE)
    set(CMAKE_THREAD_LIBS_INIT "-lpthread")
    set(CMAKE_HAVE_THREADS_LIBRARY 1)
    set(CMAKE_USE_WIN32_THREADS_INIT 0)
    set(CMAKE_USE_PTHREADS_INIT 1)
    set(THREADS_PREFER_PTHREAD_FLAG ON)
#endif ()
```
