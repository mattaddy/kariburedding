require 'rubygems'
require 'sass'
require 'haml'
require 'sinatra/base'
require 'sinatra/assetpack'

class Karibu < Sinatra::Base
  register Sinatra::AssetPack

  set :root, File.dirname(__FILE__)
  set :haml, format: :html5
  set :scss, { :load_paths => [ "#{settings.root}/assets/stylesheets" ] }

  assets do
    serve '/js',     from: 'assets/javascripts'
    serve '/css',    from: 'assets/stylesheets'
    serve '/images', from: 'assets/images'

    js  :app, ['/js/jquery.min.js', '/js/jquery*.js', '/js/*.js']
    css :app, ['/css/*.css']
  end

  get '/' do
    haml :index
  end
end
