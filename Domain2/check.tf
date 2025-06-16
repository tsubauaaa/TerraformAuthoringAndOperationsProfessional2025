check "website_check" {
  data "http" "example" {
    url = "https://google12312333dfs.com"
  }

  assert {
    condition     = data.http.example.status_code == 200
    error_message = "The website is not reachable or returned a non-200 status code."
  }
}

resource "local_file" "foo" {
    content  = "Hello World"
    filename = "${path.module}/foo.txt"
}