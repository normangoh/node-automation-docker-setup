vcl 4.0;

backend default {
    .host = "192.168.100.119";
    .port = "8000";
}

backend testGoogle {
    .host = "172.217.194.139";
    .port = "80";
}

sub vcl_recv {
    if (req.http.host ~ "rhino.acme.com") {
        set req.backend_hint = testGoogle;
    } else {
        set req.backend_hint = default;
    }
}
