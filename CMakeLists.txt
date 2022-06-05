cmake_minimum_required(VERSION 3.13)
project(modern-fortran-examples Fortran)

function(add_fortran_executable target_name)
    add_executable(${target_name} ${ARGN})
    target_compile_options(${target_name}
        PRIVATE
            # gfortran
            $<$<Fortran_COMPILER_ID:GNU>:-std=f2008 -Wall -Wextra -Wpedantic>
            # ifort
            $<$<Fortran_COMPILER_ID:Intel>:$<IF:$<PLATFORM_ID:Windows>,/stand:f08 /warn:all,-stand f08 -warn all>>
        )
endfunction()

add_fortran_executable(hello_world hello_world.f90)
add_fortran_executable(type_example type_example.f90)
add_fortran_executable(function_example function_example.f90)