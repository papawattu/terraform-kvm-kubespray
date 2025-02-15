global_defs {
    enable_script_security
    script_user root
}

vrrp_script check_haproxy {
    script "/usr/bin/killall -0 haproxy"
    interval 2
    weight 2
}

vrrp_instance VI_01 {
    state BACKUP
    interface ${network_interface}
    virtual_router_id 51
    priority ${priority}
    advert_int 1

    virtual_ipaddress {
        ${virtual_ip}
    }

    track_script {
        check_haproxy
    }
}
