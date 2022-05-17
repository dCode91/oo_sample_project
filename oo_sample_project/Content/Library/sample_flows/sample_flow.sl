namespace: sample_flows
flow:
  name: sample_flow
  workflow:
    - sample_python_op:
        do:
          sample_operations.sample_python_op: []
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
          30bdc035-f1ee-a449-663b-8aaadecc952e:
            targetId: f8c149d5-933f-479d-b7ce-9ac92513376b
            port: SUCCESS
    results:
      SUCCESS:
        f8c149d5-933f-479d-b7ce-9ac92513376b:
          x: 400
          'y': 40
