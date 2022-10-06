cmake_minimum_required(VERSION 3.24)

set(PROJECT_NAME OpenGL_Lessons)

project(${PROJECT_NAME})

find_package( OpenGL REQUIRED )

include_directories( ${OPENGL_INCLUDE_DIRS} )
add_executable(INITOPENGL InitOpenGl.cpp)

add_subdirectory(glfw)

if( MSVC )
    SET( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /ENTRY:mainCRTStartup" )
endif()


target_link_libraries(INITOPENGL PRIVATE glfw)

target_link_libraries(INITOPENGL PRIVATE OpenGL::GL)


set( GLFW_BUILD_DOCS OFF CACHE BOOL  "GLFW lib only" )
set( GLFW_INSTALL OFF CACHE BOOL  "GLFW lib only" )

if( MSVC )
    if(${CMAKE_VERSION} VERSION_LESS "3.6.0") 
        message( "\n\t[ WARNING ]\n\n\tCMake version lower than 3.6.\n\n\t - Please update CMake and rerun; OR\n\t - Manually set 'GLFW-CMake-starter' as StartUp Project in Visual Studio.\n" )
    else()
        set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME} )
    endif()
endif()