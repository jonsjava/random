#!/bin/bash
source balancer.sh
while read p; do
  test_case=$(echo $p|awk '{print $1}')
  expected_return=$(echo $p|awk '{print $2}')
  run_test=$(balancer "$test_case")
  if [ "$run_test" = "$expected_return" ]; then
    echo "Test case: '$test_case'"
    echo "    expected: $expected_return"
    echo "    received: $run_test"
    echo "    result: PASS"
    echo "=========================================="
  else
    echo "Test case: '$test_case'"
    echo "    expected: $expected_return"
    echo "    received: $run_test"
    echo "    result: FAIL"
    echo "=========================================="
  fi
done < test_cases.txt
