#!/bin/bash

#-----------------------ream setup----------------------
node_binary="\"$scriptDir/../ream/target/release/ream\" --data-dir \"$dataDir/$item\" \
        lean_node \
        --network \"$configDir/config.yaml\" \
        --validator-registry-path \"$configDir/validators.yaml\" \
        --bootnodes \"$configDir/nodes.yaml\" \
        --node-id $item --node-key \"$configDir/$privKeyPath\" \
        --socket-port $quicPort \
        --metrics-port $metricsPort"

node_docker="ghcr.io/reamlabs/ream:latest --data-dir /data \
        lean_node \
        --network /config/config.yaml \
        --validator-registry-path /config/validators.yaml \
        --bootnodes /config/nodes.yaml \
        --node-id $item --node-key /config/$privKeyPath \
        --socket-port $quicPort \
        --metrics-port $metricsPort"

# choose either binary or docker
node_setup="binary"