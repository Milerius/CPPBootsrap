macro(create_project NAME)
    project(${NAME})
    string(TOUPPER ${PROJECT_NAME} PROJECT_NAME_UPPER)
    set(${PROJECT_NAME_UPPER}_ROOT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
    set(${PROJECT_NAME_UPPER}_TEST_DIRECTORY ${PROJECT_NAME}_ROOT_DIRECTORY/tests)
    set(${PROJECT_NAME_UPPER}_EXAMPLE_DIRECTORY ${PROJECT_NAME}_ROOT_DIRECTORY/example)
    set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
    show_project_info()
endmacro()

function(show_project_info)
    message(STATUS "Project root directory: ${PROJECT_NAME_UPPER}_ROOT_DIRECTORY")
    message(STATUS "Project tests directory: ${PROJECT_NAME_UPPER}_TEST_DIRECTORY")
    message(STATUS "Project examples directory: ${PROJECT_NAME_UPPER}_TEST_DIRECTORY")
endfunction()