use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

Dynopoker.configure do |config|
    config.address = 'http://wakemydyno.com'
#  config.enable = false # default is true
#  config.poke_frequency = 123 # default is 1800s (30min)
end