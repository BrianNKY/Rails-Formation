class Post < ApplicationRecord

    include Sluggable

    # Check des validations du formulaire sur le champ "Name", Présence = Si c'est remplie ou non
    validates :name, presence: { message: 'ne doit pas être vide', }, length: { in: 3..20 }, uniqueness: true, acceptance: false, confirmation: true, on: :update
    validates :name, length: { is: 2 }, on: :create

    # presence:
    # allow_blank:
    # strict:
    # format:
    # uniqueness:
    # confirmation:
    # on:
    # if: 
    # length:
     # in:
     # acceptance:

    scope :published, -> { where(online: 0) }

    # JSON render function modified for all the model Post (Name, ID, Created_At)
    def as_json (options = nil)
        super(only: [:name, :id, :created_at])
    end

end