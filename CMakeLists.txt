cmake_minimum_required(VERSION 3.28)

project(CppQtTemplate
    VERSION 0.1.0
    LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_policy(SET QTP0001 NEW)
qt_policy(SET QTP0004 NEW)

qt_standard_project_setup()

qt_add_executable(${PROJECT_NAME}
    src/main.cpp
)

qt_add_qml_module(${PROJECT_NAME}
    URI CppQtTemplate
    VERSION 1.0
    QML_FILES
    qml/Main.qml
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
    Qt6::Quick
)