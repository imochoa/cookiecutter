https://crashedmind.github.io/PlantUMLHitchhikersGuide/aws/aws.html#id21

- https://github.com/plantuml/plantuml-stdlib/tree/master/stdlib/awslib20

come from [https://github.com/awslabs/aws-icons-for-plantuml](https://github.com/awslabs/aws-icons-for-plantuml)
How to use (from README.md):
1. Include awslib
2. There are two different ways to reference resources:
    - Use individual include files - Use one file per service or setting. For example: !include AWSPuml/Storage/SimpleStorageService.puml
        - https://github.com/awslabs/aws-icons-for-plantuml/tree/main/dist
    - Use category include file - Single include that contains all services and resources for that category. For example:     !include AWSPuml/BusinessApplications/all.puml

# Import styles

## <awslib>

## Raw
```
@startuml Groups
'Copyright 2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
'SPDX-License-Identifier: MIT (For details, see https://github.com/awslabs/aws-icons-for-plantuml/blob/master/LICENSE)

' Uncomment the line below for "dark mode" styling
'!$AWS_DARK = true

!define AWSPuml https://raw.githubusercontent.com/awslabs/aws-icons-for-plantuml/v20.0/dist
!include AWSPuml/AWSCommon.puml
!include AWSPuml/Groups/all.puml

' Groups are rectangles with a custom style using stereotype - need to hide
hide stereotype
skinparam linetype ortho
'...
@enduml
```