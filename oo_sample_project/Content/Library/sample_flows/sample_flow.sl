namespace: sample_flows
flow:
  name: sample_flow
  workflow:
    - sample_python_op:
        do:
          sample_operations.sample_python_op:
            - num1: '3'
            - num2: '2'
        publish:
          - output_0: "${sum.strip('.')[0]}"
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      sample_python_op:
        x: 160
        'y': 40
        navigate:
          ccedeaa3-d2af-168b-9baa-643032c13c12:
            targetId: f8c149d5-933f-479d-b7ce-9ac92513376b
            port: SUCCESS
    results:
      SUCCESS:
        f8c149d5-933f-479d-b7ce-9ac92513376b:
          x: 600
          'y': 40
