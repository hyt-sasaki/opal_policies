package http.api.authz

import input.attributes.request.http as http_request

allow {
    http_request.method == "GET"

    some id
    input.parsed_path = ["messages", id]

    print("id = ", id)
    print("data.custom_info = ", data.custom_info)

    data.custom_info[_].id == id
    data.custom_info[_].flag == true
}
