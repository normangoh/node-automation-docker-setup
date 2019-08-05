vcl 4.0;

import cfg;
import std;

sub vcl_init {
    new settings = cfg.file("/home/uadmin/demo.ini");
}

backend default {
    .host = "192.168.100.119";
    .port = "8000";
}

backend rhinoAcme {
    .host = "172.217.194.139";
    .port = "80";
}

sub vcl_recv {
    if (req.http.host ~ settings.get("host:rhinoAcme")) {
        set req.backend_hint = rhinoAcme;
    } else {
        set req.backend_hint = default;
    }
}
