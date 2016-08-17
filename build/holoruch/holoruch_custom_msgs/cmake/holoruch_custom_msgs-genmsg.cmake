# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "holoruch_custom_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iholoruch_custom_msgs:/home/manuel/catkin_ws/src/holoruch/holoruch_custom_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(holoruch_custom_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/manuel/catkin_ws/src/holoruch/holoruch_custom_msgs/msg/EdgePixels.msg" NAME_WE)
add_custom_target(_holoruch_custom_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "holoruch_custom_msgs" "/home/manuel/catkin_ws/src/holoruch/holoruch_custom_msgs/msg/EdgePixels.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(holoruch_custom_msgs
  "/home/manuel/catkin_ws/src/holoruch/holoruch_custom_msgs/msg/EdgePixels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/holoruch_custom_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(holoruch_custom_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/holoruch_custom_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(holoruch_custom_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(holoruch_custom_msgs_generate_messages holoruch_custom_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/manuel/catkin_ws/src/holoruch/holoruch_custom_msgs/msg/EdgePixels.msg" NAME_WE)
add_dependencies(holoruch_custom_msgs_generate_messages_cpp _holoruch_custom_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(holoruch_custom_msgs_gencpp)
add_dependencies(holoruch_custom_msgs_gencpp holoruch_custom_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS holoruch_custom_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(holoruch_custom_msgs
  "/home/manuel/catkin_ws/src/holoruch/holoruch_custom_msgs/msg/EdgePixels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/holoruch_custom_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(holoruch_custom_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/holoruch_custom_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(holoruch_custom_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(holoruch_custom_msgs_generate_messages holoruch_custom_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/manuel/catkin_ws/src/holoruch/holoruch_custom_msgs/msg/EdgePixels.msg" NAME_WE)
add_dependencies(holoruch_custom_msgs_generate_messages_lisp _holoruch_custom_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(holoruch_custom_msgs_genlisp)
add_dependencies(holoruch_custom_msgs_genlisp holoruch_custom_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS holoruch_custom_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(holoruch_custom_msgs
  "/home/manuel/catkin_ws/src/holoruch/holoruch_custom_msgs/msg/EdgePixels.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/holoruch_custom_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(holoruch_custom_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/holoruch_custom_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(holoruch_custom_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(holoruch_custom_msgs_generate_messages holoruch_custom_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/manuel/catkin_ws/src/holoruch/holoruch_custom_msgs/msg/EdgePixels.msg" NAME_WE)
add_dependencies(holoruch_custom_msgs_generate_messages_py _holoruch_custom_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(holoruch_custom_msgs_genpy)
add_dependencies(holoruch_custom_msgs_genpy holoruch_custom_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS holoruch_custom_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/holoruch_custom_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/holoruch_custom_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(holoruch_custom_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/holoruch_custom_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/holoruch_custom_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(holoruch_custom_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/holoruch_custom_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/holoruch_custom_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/holoruch_custom_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(holoruch_custom_msgs_generate_messages_py std_msgs_generate_messages_py)
