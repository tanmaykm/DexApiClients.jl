#!/usr/bin/env bash

PROTO_SRC=
PROTOC_PATH=
OUT_PATH=
if [ $# -lt 2 ]
then
    echo "Usage: $0 <path to proto files> <output folder> [path to protoc]"
    exit 1
else
    PROTO_SRC=$1
    PROTO_SRC=$(echo "$PROTO_SRC"|sed 's/\/$//g')
    OUT_PATH=$2
fi
echo "Looking for proto sources at ${PROTO_SRC}"

if [ $# -gt 2 ]
then
    PROTOC_PATH=$3
    PROTOC_PATH=$(echo "$PROTOC_PATH"|sed 's/\/$//g')/
fi

PROTOC_INCLUDES="-I=${PROTO_SRC}"

PROTO_FILES="${PROTO_SRC}/api.proto"

echo "Proto files: ${PROTO_FILES}"

echo "Generating Julia sources..."
${PROTOC_PATH}protoc ${PROTOC_INCLUDES} --julia_out=${OUT_PATH} ${PROTO_FILES}
