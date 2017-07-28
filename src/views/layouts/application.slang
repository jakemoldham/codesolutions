doctype html
html
  head
    title Codesolutions using Amber
    meta charset="utf-8"
    meta http-equiv="X-UA-Compatible" content="IE=edge"
    meta name="viewport" content="width=device-width, initial-scale=1"

    link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
    link rel="stylesheet" href="/stylesheets/main.bundle.css"

  body
    /* div.masthead */
    /*   div.container */
    /*     nav.nav */
    /*       == render_template "layouts/_nav.slang" */
    div.row
    - flash.each do |key, value|
      div class="alert alert-#{ key }"
        p = flash[key]
    div.row
      div.col-sm-12.main
        == content
    div.row
      == render_template "layouts/_footer.slang"

    script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"
    script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"
    script src="/javascripts/main.js"


