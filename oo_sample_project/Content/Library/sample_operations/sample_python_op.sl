namespace: sample_operations
operation:
  name: sample_python_op
  python_action:
    use_jython: false
    script: |-
      # do not remove the execute function
      def execute():
          # Store input numbers
          num1 = input('Enter first number: ')
          num2 = input('Enter second number: ')

          # Add two numbers
          sum = float(num1) + float(num2)

          # Display the sum
          print('The sum of {0} and {1} is {2}'.format(num1, num2, sum))
      # you can add additional helper methods below.
  results:
    - SUCCESS
