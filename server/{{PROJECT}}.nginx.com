upstream {{PROJECT}}_server {
  server unix:/home/{{PROJECT_USER}}/gunicorn.socket fail_timeout=0;
}

server {
  listen   45.79.129.237:80;

  root /home/{{PROJECT_USER}}/{{PROJECT}};
  index index.html index.htm;

  server_name {{PROJECT_URL}};

  client_max_body_size 4G;

  keepalive_timeout 5;

  # Your project's media files - amend as required
  location /media  {
    alias /home/{{PROJECT_USER}}/{{PROJECT}}/media;
  }

  # your Django project's static files - amend as required
  location /static {
    alias /home/{{PROJECT_USER}}/collected_static;
  }

  location / {
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header Host $host;
    proxy_redirect off;
    proxy_buffering off;

    proxy_pass http://app_server;
  }

  # deny access to .htaccess, .git, and various other files
  location ~ /\.ht { access_log off; log_not_found off; deny all; }
  location ~ /\.git { access_log off; log_not_found off; deny all; }

  # don't log access...
  location = /robots.txt { access_log off; log_not_found off; }
  location = /favicon.ico { access_log off; log_not_found off; }

  ##
  # Logging Settings
  ##

  access_log /home/{{PROJECT_USER}}/logs/access.log;
  error_log /home/{{PROJECT_USER}}/logs/error.log;
}
