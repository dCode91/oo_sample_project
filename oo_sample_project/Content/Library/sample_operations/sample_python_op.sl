namespace: sample_operations
operation:
  name: sample_python_op
  python_action:
    use_jython: false
    script: |-
      # do not remove the execute function
      def execute():
          # Store input numbers
          num1 = 1
          num2 = 2

          # Add two numbers
          sum = float(num1) + float(num2)

          # Display the sum
      # you can add additional helper methods below.
  results:
    - SUCCESS
