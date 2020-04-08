#! /usr/bin/env bats

# Variable SUT_IP should be set outside this script and should contain the IP
# address of the System Under Test.

# Tests

@test 'Elasticsearch listens 6903' {
  run bash -c "curl -qs http://${SUT_IP}:6903/_cluster/health"
  echo "output: "$output
  echo "status: "$status
  [[ "${status}" -eq "0" ]]
  [[ "${output}" == *"\"status\":\"yellow\""* || "${output}" == *"\"status\":\"green\""* ]]
}
