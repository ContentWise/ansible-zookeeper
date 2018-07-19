#!/usr/bin/env bats
 
@test "Validate service is running" {
  run systemctl status zookeeper
  [ "$status" -eq 0 ]
}

@test "Validate service is healthy" {
  echo stat | nc localhost 2181 | grep Mode
}