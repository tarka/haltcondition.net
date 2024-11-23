
source_dir := "public"
host := "haltcondition.net"
target_dir := "/var/www/haltcondition.net/html/"


build:
        zola build

deploy: build
        rsync -Pazv {{ source_dir }}/ {{ host }}:{{ target_dir }}

clean:
        rm -rf public/
