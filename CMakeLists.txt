cmake_minimum_required(VERSION 3.16)

set(CMAKE_SYSTEM_PROSCESSOR  riscv)
find_program(CMAKE_C_COMPILER   riscv64-unknown-elf-gcc)
find_program(CMAKE_CXX_COMPILER riscv64-unknown-elf-g++)
find_program(CMAKE_ASM_COMPILER riscv64-unknown-elf-gcc)

project(slurm-tutorial CXX C ASM)

set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS} -Wall -O3 -static")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -O3 -static")

link_directories($ENV{GEM5_M5_LIB}/riscv)

add_executable(vvadd.rv src/vvadd.cc)
target_link_libraries(vvadd.rv m5)