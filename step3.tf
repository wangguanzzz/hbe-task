resource "aws_ecs_task_definition" "step3" {
  family = "step3"
  requires_compatibilities = ["FARGATE" ]
  cpu = 2048
  memory = 16384
  execution_role_arn = "arn:aws:iam::619440915625:role/ecsTaskExecutionRole"
  network_mode = "awsvpc"
  ephemeral_storage {
    size_in_gib = 50
  }
 
  container_definitions = jsonencode([
 {
      "image": "619440915625.dkr.ecr.ap-east-1.amazonaws.com/imb-portfolios-batch:3.6",
      "dnsSearchDomains": null,
      "environmentFiles": null,
      "logConfiguration": {
        "logDriver": "awslogs",
        "secretOptions": null,
        "options": {
          "awslogs-group": "/ecs/step3",
          "awslogs-region": "ap-east-1",
          "awslogs-stream-prefix": "ecs"
        }
      },
      "entryPoint": null,
      "portMappings": [],
      "command": [
        "bash",
        "/opt/imb_portfolios_batch.sh"
      ],
      "linuxParameters": null,
      "environment": [
        {
          "name": "HBE_SCHEMA",
          "value": "HBE"
        },
        {
          "name": "NGDW_SCHEMA",
          "value": "dwcore"
        },
        {
          "name": "NGDW_VIEW_SUFFIX",
          "value": "_sa"
        },   
        {
          "name": "MSGQUEUE_VT",
          "value": "3000"
        },           
        {
          "name": "MySql_LOGIN",
          "value": "root"
        },  
        {
          "name": "MySql_PWD",
          "value": "password"
        },  
        {
          "name": "MySql_TST_URL",
          "value": "jdbc:mysql://mysql/HBE"
        },  
        {
          "name": "MySql_URL",
          "value": "jdbc:mysql://localhost:3306/HBE"
        },
        {
          "name": "PGD_LOGIN",
          "value": "coru1hbe"
        },          
        {
          "name": "PGD_PWD",
          "value": "P@ssw0rd654321123456"
        },
        {
          "name": "PGD_URL",
          "value": "jdbc:postgresql://devdwdbs001.cm62n3oux6wy.ap-east-1.redshift.amazonaws.com:5439/core01db"
        },
        {
          "name": "HOSTNM",
          "value": "devdwdbs001.cm62n3oux6wy.ap-east-1.redshift.amazonaws.com"
        },
        {
          "name": "DBNM",
          "value": "core01db"
        },
        {
          "name": "PORTNO",
          "value": "5439"
        },
        {
          "name": "PROD_ENV",
          "value": "true"
        },
        {
          "name": "S3_WORK_BUCKET",
          "value": "hbe-test/env1/work/imb"
        },
        {
          "name": "S3_PATH_WORKFILE",
          "value": "s3://hbe-test/env1/work/imb/"
        },  
        {
          "name": "S3_PATH_RDY",
          "value": "s3://hbe-test/env1/hbe/imb/task/"
        },
        {
          "name": "XMX_PARAM",
          "value": "15G"
        }, 
        {
          "name": "REDIS_MASTER",
          "value": "10.36.80.104"
        },
        {
          "name": "REDIS_PORT",
          "value": "6379"
        },
        {
          "name": "REDIS_SLEEP",
          "value": "5000"
        }
      ],
      "resourceRequirements": null,
      "ulimits": null,
      "dnsServers": null,
      "mountPoints": [],
      "workingDirectory": null,
      "secrets": null,
      "dockerSecurityOptions": null,
      "memory": null,
      "memoryReservation": null,
      "volumesFrom": [],
      "stopTimeout": null,
      
      "startTimeout": null,
      "firelensConfiguration": null,
      "dependsOn": null,
      "disableNetworking": null,
      "interactive": null,
      "healthCheck": null,
      "essential": true,
      "links": null,
      "hostname": null,
      "extraHosts": null,
      "pseudoTerminal": null,
      "user": null,
      "readonlyRootFilesystem": null,
      "dockerLabels": null,
      "systemControls": null,
      "privileged": null,
      "name": "container"
    }
  ])


}