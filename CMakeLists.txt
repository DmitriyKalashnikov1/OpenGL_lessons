cmake_minimum_required(VERSION 3.24)

set(PROJECT_NAME OpenGL_Lessons)

project(${PROJECT_NAME})

find_package( OpenGL REQUIRED )



set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set( GLFW_BUILD_DOCS OFF CACHE BOOL  "GLFW lib only" )
set( GLFW_INSTALL OFF CACHE BOOL  "GLFW lib only" )

target_include_directories(${PROJECT_NAME} ${OPENGL_INCLUDE_DIRS} )
add_executable(INITOPENGL InitOpenGL.cpp)
add_executable(Triangle Triangle.cpp)
add_executable(k k.cpp)
add_executable(home home.cpp)

add_subdirectory(glfw)


if( MSVC )
    SET( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /ENTRY:mainCRTStartup" )
endif()


target_link_libraries(INITOPENGL PRIVATE OpenGL::GL )
target_link_libraries(INITOPENGL PRIVATE ${OPENGL_LIBRARIES} glfw)

target_link_libraries(Triangle PRIVATE OpenGL::GL )
target_link_libraries(Triangle PRIVATE ${OPENGL_LIBRARIES} glfw)

target_link_libraries(k PRIVATE OpenGL::GL )
target_link_libraries(k PRIVATE ${OPENGL_LIBRARIES} glfw)

target_link_libraries(home PRIVATE OpenGL::GL )
target_link_libraries(home PRIVATE ${OPENGL_LIBRARIES} glfw)


if( MSVC )
    if(${CMAKE_VERSION} VERSION_LESS "3.6.0") 
        message( "\n\t[ WARNING ]\n\n\tCMake version lower than 3.6.\n\n\t - Please update CMake and rerun; OR\n\t - Manually set 'GLFW-CMake-starter' as StartUp Project in Visual Studio.\n" )
    else()
        set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME} )
    endif()
endif()
