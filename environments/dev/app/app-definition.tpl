{
    "name": "container-1",
    "image": "${image_url}",
    "cpu": 0,
    "portMappings": [
        {
            "containerPort": ${app_port},
            "protocol": "tcp",
            "appProtocol": "http"
        }
    ],
    "essential": true,
    "environment": [],
    "environmentFiles": [],
    "mountPoints": [],
    "volumesFrom": [],
    "ulimits": [],
    "systemControls": []
}

