
source_dir := "public"
upload_host := "www.haltcondition.net"
target_dir := "/var/www/haltcondition.net/html/"


build:
        zola build

deploy: build
        rsync -Pazv {{ source_dir }}/ {{ upload_host }}:{{ target_dir }}

clean:
        rm -rf public/
