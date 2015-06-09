class SettingsController < ApplicationController
  load_and_authorize_resource

  def dashboard; end

  def insertaes
    @birds = Bird.all
  end
end
