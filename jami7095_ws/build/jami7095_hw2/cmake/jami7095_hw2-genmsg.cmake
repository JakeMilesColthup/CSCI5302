# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jami7095_hw2: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jami7095_hw2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv" NAME_WE)
add_custom_target(_jami7095_hw2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jami7095_hw2" "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(jami7095_hw2
  "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jami7095_hw2
)

### Generating Module File
_generate_module_cpp(jami7095_hw2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jami7095_hw2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jami7095_hw2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jami7095_hw2_generate_messages jami7095_hw2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv" NAME_WE)
add_dependencies(jami7095_hw2_generate_messages_cpp _jami7095_hw2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jami7095_hw2_gencpp)
add_dependencies(jami7095_hw2_gencpp jami7095_hw2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jami7095_hw2_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(jami7095_hw2
  "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jami7095_hw2
)

### Generating Module File
_generate_module_eus(jami7095_hw2
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jami7095_hw2
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jami7095_hw2_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jami7095_hw2_generate_messages jami7095_hw2_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv" NAME_WE)
add_dependencies(jami7095_hw2_generate_messages_eus _jami7095_hw2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jami7095_hw2_geneus)
add_dependencies(jami7095_hw2_geneus jami7095_hw2_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jami7095_hw2_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(jami7095_hw2
  "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jami7095_hw2
)

### Generating Module File
_generate_module_lisp(jami7095_hw2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jami7095_hw2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jami7095_hw2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jami7095_hw2_generate_messages jami7095_hw2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv" NAME_WE)
add_dependencies(jami7095_hw2_generate_messages_lisp _jami7095_hw2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jami7095_hw2_genlisp)
add_dependencies(jami7095_hw2_genlisp jami7095_hw2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jami7095_hw2_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(jami7095_hw2
  "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jami7095_hw2
)

### Generating Module File
_generate_module_nodejs(jami7095_hw2
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jami7095_hw2
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jami7095_hw2_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jami7095_hw2_generate_messages jami7095_hw2_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv" NAME_WE)
add_dependencies(jami7095_hw2_generate_messages_nodejs _jami7095_hw2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jami7095_hw2_gennodejs)
add_dependencies(jami7095_hw2_gennodejs jami7095_hw2_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jami7095_hw2_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(jami7095_hw2
  "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jami7095_hw2
)

### Generating Module File
_generate_module_py(jami7095_hw2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jami7095_hw2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jami7095_hw2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jami7095_hw2_generate_messages jami7095_hw2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gust/Desktop/CSCI5302/jami7095_ws/src/jami7095_hw2/srv/EchoString.srv" NAME_WE)
add_dependencies(jami7095_hw2_generate_messages_py _jami7095_hw2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jami7095_hw2_genpy)
add_dependencies(jami7095_hw2_genpy jami7095_hw2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jami7095_hw2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jami7095_hw2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jami7095_hw2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(jami7095_hw2_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jami7095_hw2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jami7095_hw2
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(jami7095_hw2_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jami7095_hw2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jami7095_hw2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(jami7095_hw2_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jami7095_hw2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jami7095_hw2
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(jami7095_hw2_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jami7095_hw2)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jami7095_hw2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jami7095_hw2
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(jami7095_hw2_generate_messages_py std_msgs_generate_messages_py)
endif()
