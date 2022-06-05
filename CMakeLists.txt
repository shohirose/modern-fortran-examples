cmake_minimum_required(VERSION 3.13)
project(modern-fortran-examples Fortran)

function(add_fortran_executable name)
    add_executable(${name} ${name}.f90)
    target_compile_options(${name}
        PRIVATE
            # gfortran
            $<$<Fortran_COMPILER_ID:GNU>:-std=f2008 -Wall -Wextra -Wpedantic>
            # ifort
            $<$<Fortran_COMPILER_ID:Intel>:$<IF:$<PLATFORM_ID:Windows>,/stand:f08 /warn:all,-stand f08 -warn all>>
        )
endfunction()

add_fortran_executable(hello_world)
add_fortran_executable(type_example)
add_fortran_executable(function_example)