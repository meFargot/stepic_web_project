def hello(env, response):
    body = ""
    for cur in env["QUERY_STRING"].split('&'):
        body += cur + '\n'
    resHeaders = [("Content-Type", "text/plain")]
    status = "200 OK"
    response(status, resHeaders)
    return body