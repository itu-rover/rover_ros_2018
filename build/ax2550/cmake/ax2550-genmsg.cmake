# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ax2550: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iax2550:/home/hgaren/catkin_ws1/src/ax2550/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/indigo/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ax2550_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hgaren/catkin_ws1/src/ax2550/msg/Encoders.msg" NAME_WE)
add_custom_target(_ax2550_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ax2550" "/home/hgaren/catkin_ws1/src/ax2550/msg/Encoders.msg" ""
)

get_filename_component(_filename "/home/hgaren/catkin_ws1/src/ax2550/msg/StampedEncoders.msg" NAME_WE)
add_custom_target(_ax2550_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ax2550" "/home/hgaren/catkin_ws1/src/ax2550/msg/StampedEncoders.msg" "ax2550/Encoders:std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ax2550
  "/home/hgaren/catkin_ws1/src/ax2550/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ax2550
)
_generate_msg_cpp(ax2550
  "/home/hgaren/catkin_ws1/src/ax2550/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/home/hgaren/catkin_ws1/src/ax2550/msg/Encoders.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ax2550
)

### Generating Services

### Generating Module File
_generate_module_cpp(ax2550
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ax2550
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ax2550_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ax2550_generate_messages ax2550_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hgaren/catkin_ws1/src/ax2550/msg/Encoders.msg" NAME_WE)
add_dependencies(ax2550_generate_messages_cpp _ax2550_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hgaren/catkin_ws1/src/ax2550/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(ax2550_generate_messages_cpp _ax2550_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ax2550_gencpp)
add_dependencies(ax2550_gencpp ax2550_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ax2550_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ax2550
  "/home/hgaren/catkin_ws1/src/ax2550/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ax2550
)
_generate_msg_lisp(ax2550
  "/home/hgaren/catkin_ws1/src/ax2550/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/home/hgaren/catkin_ws1/src/ax2550/msg/Encoders.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ax2550
)

### Generating Services

### Generating Module File
_generate_module_lisp(ax2550
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ax2550
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ax2550_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ax2550_generate_messages ax2550_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hgaren/catkin_ws1/src/ax2550/msg/Encoders.msg" NAME_WE)
add_dependencies(ax2550_generate_messages_lisp _ax2550_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hgaren/catkin_ws1/src/ax2550/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(ax2550_generate_messages_lisp _ax2550_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ax2550_genlisp)
add_dependencies(ax2550_genlisp ax2550_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ax2550_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ax2550
  "/home/hgaren/catkin_ws1/src/ax2550/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ax2550
)
_generate_msg_py(ax2550
  "/home/hgaren/catkin_ws1/src/ax2550/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/home/hgaren/catkin_ws1/src/ax2550/msg/Encoders.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ax2550
)

### Generating Services

### Generating Module File
_generate_module_py(ax2550
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ax2550
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ax2550_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ax2550_generate_messages ax2550_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hgaren/catkin_ws1/src/ax2550/msg/Encoders.msg" NAME_WE)
add_dependencies(ax2550_generate_messages_py _ax2550_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hgaren/catkin_ws1/src/ax2550/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(ax2550_generate_messages_py _ax2550_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ax2550_genpy)
add_dependencies(ax2550_genpy ax2550_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ax2550_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ax2550)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ax2550
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ax2550_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(ax2550_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ax2550)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ax2550
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ax2550_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(ax2550_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ax2550)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ax2550\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ax2550
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ax2550_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(ax2550_generate_messages_py nav_msgs_generate_messages_py)
endif()
