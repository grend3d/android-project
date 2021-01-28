cmake_minimum_required(VERSION 3.6)

project(GAME)

# armeabi-v7a requires cpufeatures library
# include(AndroidNdkModules)
# android_ndk_import_module_cpufeatures()


# SDL sources are in a subfolder named "SDL"
add_subdirectory(SDL)
add_subdirectory(glm)

# Compilation of companion libraries
#add_subdirectory(SDL_image)
#add_subdirectory(SDL_mixer)
#add_subdirectory(SDL_ttf)
set(BUILD_EXTRAS OFF CACHE BOOL "bullet extras" FORCE)
set(USE_GRAPHICAL_BENCHMARK OFF CACHE BOOL "bullet benchmarks" FORCE)
add_subdirectory(bullet)

# Your game and its CMakeLists.txt are in a subfolder named "src"
add_subdirectory(grend)
add_subdirectory(landscape-demo)
