server {
    listen 80;
    server_name superlists.mylekarna.com;

    location / {
        proxy_pass http://localhost:8000;
    }
}