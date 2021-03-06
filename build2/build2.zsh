#Clang
alias clf='ln -s ~/.clang* .'

alias cldb='b -vn clean update |& compiledb'

#GCC DEBUG MACROS
activate_assert_macro='-DDEBUG'
gcc_debug_macros=''

#GCC DEBUG FLAGS
gcc_warning_flags='-Wall -Wextra -Weffc++ -pedantic -pedantic-errors'
gcc_instrumentation_option='-fsanitize=address -fsanitize=undefined'
gcc_optimization_options='-fno-omit-frame-pointer'
gcc_codegen_options='-fvisibility=hidden -fvisibility-inlines-hidden'
gcc_optimization_options_linker='-fuse-ld=lld'

#OPTIONS CATEGORIZATIONS
gcc_compiler_flags=$gcc_warning_flags" "$gcc_optimization_options" "$gcc_instrumentation_option" "$gcc_codegen_options
gcc_linker_flags=$gcc_optimization_options_linker" "$gcc_instrumentation_option
gcc_preprocessor_flags=$gcc_debug_macros" "$activate_assert_macro

#GCC Build2 DEBUG CONFIG
gcc_compiler_name='gcc'
gcc_compiler_build_mode='debug'
gcc_build_name=$gcc_compiler_name"-"$gcc_compiler_build_mode
gcc_b2_init='bdep init -C ~/repos/c++/build2/build2builds/'$gcc_build_name" "@$gcc_build_name' cc'
gcc_debug_compiler='g++ -ggdb -Og'
gcc_cxx_mode_config=' config.cxx'='"'$gcc_debug_compiler'"'' config.cxx.coptions'='"'$gcc_compiler_flags'"'
gcc_cxx_preprocessor_config='config.cxx.poptions'='"'$gcc_preprocessor_flags'"'
gcc_cxx_linker_config='config.bin.ar=gcc-ar config.bin.ranlib=gcc-ranlib config.cxx.loptions'='"'$gcc_linker_flags'"'
alias gcc-config-debug=$gcc_b2_init" "$gcc_cxx_mode_config" "$gcc_cxx_preprocessor_config" "$gcc_cxx_linker_config

#GCC RELEASE MACROS
deactivate_assert_macro='-DNDEBUG'
gcc_release_macros='-D_FORTIFY_SOURCE=2'

#GCC RELEASE OPTIONS
gcc_release_optimization_options_linker='-fuse-ld=lld -flto -flto-compression-level=9 -fuse-linker-plugin'
gcc_instrumentation_option_security='-fstack-clash-protection -fstack-protector-strong -fcf-protection=full'

#RELEASE OPTIONS CATEGORIZATIONS
gcc_release_flags=$gcc_warning_flags
gcc_release_linker_flags=$gcc_release_optimization_options_linker
gcc_release_preprocessor_flags=$deactivate_assert_macro" "$gcc_release_macros

#GCC Build2 RELEASE CONFIG
gcc_compiler_name='gcc'
gcc_compiler_build_mode='release'
gcc_build_name=$gcc_compiler_name"-"$gcc_compiler_build_mode
gcc_b2_init='bdep init -C ~/repos/c++/build2/build2builds/'$gcc_build_name" "@$gcc_build_name' cc'
gcc_release_compiler='g++ -03'
gcc_cxx_mode_config=' config.cxx'='"'$gcc_release_compiler'"'' config.cxx.coptions'='"'$gcc_compiler_flags'"'
gcc_cxx_preprocessor_config='config.cxx.poptions'='"'$gcc_preprocessor_flags'"'
gcc_cxx_linker_config='config.bin.ar=gcc-ar config.bin.ranlib=gcc-ranlib config.cxx.loptions'='"'$gcc_linker_flags'"'
alias gcc-config-release=$gcc_b2_init" "$gcc_cxx_mode_config" "$gcc_cxx_preprocessor_config" "$gcc_cxx_linker_config
#CLANG DEBUG FLAGS
clang_codegen='-fomit-frame-pointer -fvisibility=hidden'
clang_optimization_options_linker='-flto=thin -Wl,--thinlto-cache-dir=./.cache'
clang_instrumentation_option='-fsanitize=address -fsanitize=undefined'
clang_linker_flags=$clang_instrumentation_option" "$clang_optimization_options_linker
clang_warning_flags='-Weverything -Wno-c++98-compat -Wno-c++98-compat-pedantic -Wno-missing-prototypes'
clang_compiler_flags=$clang_warning_flags" "$clang_codegen" "$clang_linker_flags

#CLANG DEBUG MACROS
clang_preprocessor_flags=$activate_assert_macro

#CLANG RELEASE OPTIONS
clang_instrumentation_option_security='-fstack-clash-protection'

clang_compiler_name='clang'
clang_compiler_build_mode='debug'
clang_build_name=$clang_compiler_name"-"$clang_compiler_build_mode
clang_b2_init='bdep init -C ~/repos/c++/build2/build2builds/'$clang_build_name" "@$clang_build_name' cc'
clang_debug_compiler='clang++ -glldb -Og'
clang_release_compiler='clang++ -O3'
clang_cxx_mode_config=' config.cxx'='"'$clang_debug_compiler'"'' config.cxx.coptions'='"'$clang_compiler_flags'"'
clang_cxx_preprocessor_config='config.cxx.poptions'='"'$clang_preprocessor_flags'"'
clang_cxx_linker_config='config.bin.ar=llvm-ar config.bin.ranlib=llvm-ranlib config.cxx.loptions'='"'$clang_linker_flags'"'
alias clang-config-debug=$clang_b2_init" "$clang_cxx_mode_config" "$clang_cxx_preprocessor_config" "$clang_cxx_linker_config

#Add project to particular configuration
alias init-clang-debug='bdep init -A ~/repos/c++/build2/build2builds/clang-debug @clang-debug'
alias init-gcc-debug='bdep init -A ~/repos/c++/build2/build2builds/gcc-debug @gcc-debug'

#Create exeutables and library
alias bexe='bdep new -l c++ -t exe'
alias blib='bdep new -l c++ -t lib'

#alias bnew='bdep new -t empty'
#alias blib='bdep new --package -l c++ -t lib,split'
#alias bexe='bdep new --package -l c++ -t exe,prefix=src'
