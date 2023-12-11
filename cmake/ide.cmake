# ---------------------------------------------------------------------------------------
# IDE support for headers
# ---------------------------------------------------------------------------------------
set(SPDLOG_HEADERS_DIR "${CMAKE_CURRENT_LIST_DIR}/../include")

file(GLOB SPDLOG_TOP_HEADERS "${SPDLOG_HEADERS_DIR}/spdlog/*.h")
file(GLOB UTILS_TOP_HEADERS "${SPDLOG_HEADERS_DIR}/utils/*.h")
file(GLOB SPDLOG_DETAILS_HEADERS "${SPDLOG_HEADERS_DIR}/spdlog/details/*.h")
file(GLOB SPDLOG_SINKS_HEADERS "${SPDLOG_HEADERS_DIR}/spdlog/sinks/*.h")
file(GLOB SPDLOG_FMT_HEADERS "${SPDLOG_HEADERS_DIR}/spdlog/fmt/*.h")
file(GLOB SPDLOG_FMT_BUNDELED_HEADERS "${CMAKE_CURRENT_LIST_DIR}/../3rdparty/fmt/*.h")
set(SPDLOG_ALL_HEADERS ${SPDLOG_TOP_HEADERS} ${UTILS_TOP_HEADERS} ${SPDLOG_DETAILS_HEADERS} ${SPDLOG_SINKS_HEADERS}
                       ${SPDLOG_FMT_HEADERS} ${SPDLOG_FMT_BUNDELED_HEADERS})

source_group("Header Files\\spdlog" FILES ${SPDLOG_TOP_HEADERS})
source_group("Header Files\\utils" FILES ${UTILS_TOP_HEADERS})
source_group("Header Files\\spdlog\\details" FILES ${SPDLOG_DETAILS_HEADERS})
source_group("Header Files\\spdlog\\sinks" FILES ${SPDLOG_SINKS_HEADERS})
source_group("Header Files\\spdlog\\fmt" FILES ${SPDLOG_FMT_HEADERS})
source_group("Header Files\\3rdparty\\fmt\\" FILES ${SPDLOG_FMT_BUNDELED_HEADERS})
