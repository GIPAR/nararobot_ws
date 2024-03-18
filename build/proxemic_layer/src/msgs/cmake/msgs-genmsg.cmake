# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Imsgs:/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg" NAME_WE)
add_custom_target(_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgs" "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg" "geometry_msgs/Pose:msgs/Person:geometry_msgs/Quaternion:msgs/Proxemic:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg" NAME_WE)
add_custom_target(_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgs" "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg" "geometry_msgs/Point:msgs/Proxemic:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg" NAME_WE)
add_custom_target(_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msgs" "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgs
)
_generate_msg_cpp(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgs
)
_generate_msg_cpp(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(msgs_generate_messages msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg" NAME_WE)
add_dependencies(msgs_generate_messages_cpp _msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg" NAME_WE)
add_dependencies(msgs_generate_messages_cpp _msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg" NAME_WE)
add_dependencies(msgs_generate_messages_cpp _msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgs_gencpp)
add_dependencies(msgs_gencpp msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgs
)
_generate_msg_eus(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgs
)
_generate_msg_eus(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(msgs_generate_messages msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg" NAME_WE)
add_dependencies(msgs_generate_messages_eus _msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg" NAME_WE)
add_dependencies(msgs_generate_messages_eus _msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg" NAME_WE)
add_dependencies(msgs_generate_messages_eus _msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgs_geneus)
add_dependencies(msgs_geneus msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgs
)
_generate_msg_lisp(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgs
)
_generate_msg_lisp(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(msgs_generate_messages msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg" NAME_WE)
add_dependencies(msgs_generate_messages_lisp _msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg" NAME_WE)
add_dependencies(msgs_generate_messages_lisp _msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg" NAME_WE)
add_dependencies(msgs_generate_messages_lisp _msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgs_genlisp)
add_dependencies(msgs_genlisp msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgs
)
_generate_msg_nodejs(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgs
)
_generate_msg_nodejs(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(msgs_generate_messages msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg" NAME_WE)
add_dependencies(msgs_generate_messages_nodejs _msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg" NAME_WE)
add_dependencies(msgs_generate_messages_nodejs _msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg" NAME_WE)
add_dependencies(msgs_generate_messages_nodejs _msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgs_gennodejs)
add_dependencies(msgs_gennodejs msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgs
)
_generate_msg_py(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgs
)
_generate_msg_py(msgs
  "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgs
)

### Generating Services

### Generating Module File
_generate_module_py(msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(msgs_generate_messages msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/People.msg" NAME_WE)
add_dependencies(msgs_generate_messages_py _msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Person.msg" NAME_WE)
add_dependencies(msgs_generate_messages_py _msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gipar/nara2_ws/src/proxemic_layer/src/msgs/msg/Proxemic.msg" NAME_WE)
add_dependencies(msgs_generate_messages_py _msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msgs_genpy)
add_dependencies(msgs_genpy msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
