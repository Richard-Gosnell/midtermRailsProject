# frozen_string_literal: true

class PokemonController < ApplicationController
  def show
    @pokemon = Pokemon.find(params[:name])
  end
end
