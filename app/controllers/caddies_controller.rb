class CaddiesController < ApplicationController
  def new
    @caddy= Caddy.new
  end
end
