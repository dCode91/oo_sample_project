namespace: sample_operations
operation:
  name: sample_python_op
  inputs:
    - num1
    - num2
  python_action:
    use_jython: false
    script: "# do not remove the execute function\ndef execute(num1, num2):\n    # Store input numbers\n\n    # Add two numbers\n    sum = float(num1) + float(num2)\n    return {\"sum\": sum}\n    \n# you can add additional helper methods below."
  outputs:
    - sum: '${sum}'
  results:
    - SUCCESS
