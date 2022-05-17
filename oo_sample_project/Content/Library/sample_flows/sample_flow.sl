namespace: sample_flows
flow:
  name: sample_flow
  workflow:
    - sample_python_op:
        do:
          sample_operations.sample_python_op:
            - num1: '3'
            - num2: '2'
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
          238cf0ca-09e5-b030-6e2c-3dcd46c6199d:
            targetId: f8c149d5-933f-479d-b7ce-9ac92513376b
            port: SUCCESS
    results:
      SUCCESS:
        f8c149d5-933f-479d-b7ce-9ac92513376b:
          x: 400
          'y': 40
