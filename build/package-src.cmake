SET(versionname "vigra-1.10.0")
SET(versiontag "Version-1-10-0")
SET(GITREFS_PATH "E:/GitCode/Vigra_Test/vigra-1.10.0/.git/refs")

IF (NOT EXISTS "${GITREFS_PATH}/tags/${versiontag}")
    MESSAGE(FATAL_ERROR "Version tag '${versiontag}' missing.")
endif()

execute_process(COMMAND ${CMAKE_COMMAND} -E compare_files "${GITREFS_PATH}/heads/master" "${GITREFS_PATH}/tags/${versiontag}"
                 RESULT_VARIABLE VERSION_OUT_OF_SYNC ERROR_QUIET)

IF (${VERSION_OUT_OF_SYNC})
    MESSAGE(FATAL_ERROR "Version tag '${versiontag}' and branch 'master' are out of sync.")
endif()

execute_process(COMMAND ${CMAKE_COMMAND} -E remove_directory ${versionname}
                WORKING_DIRECTORY "E:/GitCode/Vigra_Test/build")

execute_process(COMMAND D:/ProgramFiles/Git/cmd/git.exe archive --format=tar --prefix=${versionname}/ -o "E:/GitCode/Vigra_Test/build/${versionname}-src.tar" ${versiontag}
                 WORKING_DIRECTORY "E:/GitCode/Vigra_Test/vigra-1.10.0")
MESSAGE(STATUS "Created tar file")

IF(${CMAKE_VERSION} VERSION_GREATER 2.8.2)
    SET(CMAKE_HAS_WORKING_TAR 1)
ELSE()
    SET(CMAKE_HAS_WORKING_TAR 0)
ENDIF()

IF(${CMAKE_HAS_WORKING_TAR})
    execute_process(COMMAND ${CMAKE_COMMAND} -E tar xf ${versionname}-src.tar
                    WORKING_DIRECTORY "E:/GitCode/Vigra_Test/build")
    MESSAGE(STATUS "Unpacked tar file")
    execute_process(COMMAND ${CMAKE_COMMAND} -E copy_directory E:/GitCode/Vigra_Test/vigra-1.10.0/doc ${versionname}/doc
                    WORKING_DIRECTORY "E:/GitCode/Vigra_Test/build")
    MESSAGE(STATUS "Copied docu")
    execute_process(COMMAND ${CMAKE_COMMAND} -E tar czf ${versionname}-src.tar.gz ${versionname}
                    WORKING_DIRECTORY "E:/GitCode/Vigra_Test/build")
    MESSAGE(STATUS "Finished  ${versionname}-src.tar.gz")
    execute_process(COMMAND ${CMAKE_COMMAND} -E remove -f ${versionname}-src.tar
                    WORKING_DIRECTORY "E:/GitCode/Vigra_Test/build")
ELSE()
    execute_process(COMMAND tar -xf ${versionname}-src.tar
                    WORKING_DIRECTORY "E:/GitCode/Vigra_Test/build")
    MESSAGE(STATUS "Unpacked tar file")
    execute_process(COMMAND ${CMAKE_COMMAND} -E copy_directory E:/GitCode/Vigra_Test/vigra-1.10.0/doc ${versionname}/doc
                    WORKING_DIRECTORY "E:/GitCode/Vigra_Test/build")
    MESSAGE(STATUS "Copied docu")
    execute_process(COMMAND tar -czf ${versionname}-src.tar.gz ${versionname}
                    WORKING_DIRECTORY "E:/GitCode/Vigra_Test/build")
    MESSAGE(STATUS "Finished  ${versionname}-src.tar.gz")
    execute_process(COMMAND ${CMAKE_COMMAND} -E remove -f ${versionname}-src.tar
                    WORKING_DIRECTORY "E:/GitCode/Vigra_Test/build")
ENDIF()
