# taken verbatim from http://maxtaco.github.io/coffee-script/
search = (keyword, cb) ->
  host = "http://search.twitter.com"
  url = "#{host}/search.json?q=#{keyword}&callback=?"
  await $.getJSON url, defer json
  cb json.results

$ ->
  $("h1").html "Hello World"