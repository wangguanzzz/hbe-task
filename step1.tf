resource "aws_ecs_task_definition" "step1" {
  family = "step1"
  requires_compatibilities = ["FARGATE" ]
  cpu = 512
  memory = 1024
  execution_role_arn = "arn:aws:iam::619440915625:role/ecsTaskExecutionRole"
  network_mode = "awsvpc"
  ephemeral_storage {
    size_in_gib = 50
  }
 
  container_definitions = jsonencode([
 {
      "dnsSearchDomains": null,
      "environmentFiles": null,
      "logConfiguration": {
        "logDriver": "awslogs",
        "secretOptions": null,
        "options": {
          "awslogs-group": "/ecs/step1",
          "awslogs-region": "ap-east-1",
          "awslogs-stream-prefix": "ecs"
        }
      },
      "entryPoint": null,
      "portMappings": [],
      "command": [
        "bash",
        "/opt/imb_instruments_batch.sh"
      ],
      "linuxParameters": null,
      "environment": [
        {
          "name": "DBNM",
          "value": "core01db"
        },
        {
          "name": "DEV_ENV",
          "value": "false"
        },
        {
          "name": "HBE_SCHEMA",
          "value": "HBE"
        },
        {
          "name": "HOSTNM",
          "value": "devdwdbs001.cm62n3oux6wy.ap-east-1.redshift.amazonaws.com"
        },
        {
          "name": "JOB_NAME",
          "value": "IMB"
        },
        {
          "name": "MSGQUEUE_VT",
          "value": "18000"
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
          "name": "NGDW_SCHEMA",
          "value": "dwcore"
        },
        {
          "name": "NGDW_VIEW_SUFFIX",
          "value": "_sa"
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
          "name": "PORTNO",
          "value": "5439"
        },
        {
          "name": "PROD_ENV",
          "value": "true"
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
        },
        {
          "name": "S3_MYSQL_DATA_PATH",
          "value": "s3://hbe-test/Step2/source/"
        },
        {
          "name": "S3_PATH_WORKFILE",
          "value": "s3://hbe-test/env1/work/imb/"
        },
        {
          "name": "XMX_PARAM",
          "value": "16G"
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
      "image": "619440915625.dkr.ecr.ap-east-1.amazonaws.com/imb-instruments-batch:3.6",
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