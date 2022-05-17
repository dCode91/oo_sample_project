namespace: sample_operations
operation:
  name: sample_python_op
  inputs:
    - num1
    - num2
  python_action:
    use_jython: false
    script: |-
      def execute(num1, num2):
          sum = float(num1) + float(num2)
          return {"sum": sum}
  outputs:
    - sum: '${sum}'
  results:
    - SUCCESS
