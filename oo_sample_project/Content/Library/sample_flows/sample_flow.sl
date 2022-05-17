namespace: sample_flows
flow:
  name: sample_flow
  workflow:
    - sample_python_op:
        do:
          sample_operations.sample_python_op: []
        navigate:
          - SUCCESS: local_ping
    - local_ping:
        do:
          io.cloudslang.base.utils.local_ping:
            - target_host: localhost
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      sample_python_op:
        x: 160
        'y': 40
      local_ping:
        x: 240
        'y': 200
        navigate:
          3f7af468-8d8d-d86f-599c-6f8260a02370:
            targetId: f8c149d5-933f-479d-b7ce-9ac92513376b
            port: SUCCESS
    results:
      SUCCESS:
        f8c149d5-933f-479d-b7ce-9ac92513376b:
          x: 400
          'y': 40
