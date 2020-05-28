# frozen_string_literal: true

class ArtistSerializer < ActiveModel::Serializer
  # attributes :id
  def initialize(artist)
    @artist = artist
    # render json artist.to_json
    # @artist.to_json
  end

  def to_serialized_json
    # @artist.to_json(only: %i[id name email])
    # @artist.to_json(except: [:updated_at])
    @artist.to_json(except: [:updated_at])
    # ! MUST FIX LINTER 'json()' is lint corrected to 'json'
    # @artist.to_json()
  end
end
