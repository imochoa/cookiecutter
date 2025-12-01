# plantuml-stdlib

https://plantuml.com/stdlib
https://github.com/plantuml/plantuml-stdlib



- AWS
    - [`awslib` Library](https://github.com/plantuml/plantuml-stdlib/blob/master/stdlib/awslib/_examples_/example.puml)
    - [Examples](https://github.com/plantuml/plantuml-stdlib/blob/master/stdlib/awslib/_examples_/example.puml)


come from [https://github.com/awslabs/aws-icons-for-plantuml](https://github.com/awslabs/aws-icons-for-plantuml)
How to use (from README.md):
1. Include awslib
2. There are two different ways to reference resources:
    - Use individual include files - Use one file per service or setting. For example: !include AWSPuml/Storage/SimpleStorageService.puml
        - https://github.com/awslabs/aws-icons-for-plantuml/tree/main/dist
    - Use category include file - Single include that contains all services and resources for that category. For example:     !include AWSPuml/BusinessApplications/all.puml

