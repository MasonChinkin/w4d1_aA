# == Schema Information
#
# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
    validates :artist_id, :title, presence: true
    validates :artist_id, uniqueness: true

    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User
end
