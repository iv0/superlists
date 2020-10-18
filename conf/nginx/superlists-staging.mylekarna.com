server {
    listen 80;
    server_name superlists-staging.mylekarna.com;

	location /static {
        alias /home/ivo/sites/superlists-staging.mylekarna.com/static;
    }

    location / {
        proxy_pass http://unix:/tmp/superlists-staging.ottg.eu.socket;
        proxy_set_header Host $host;
    }
}