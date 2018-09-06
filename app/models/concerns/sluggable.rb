module Sluggable

    extend ActiveSupport::Concern

    included do

        before_validation :set_default_slug, on: [:create, :update]

        private

        def set_default_slug

            if !self.name.nil? && !self.name.empty? && (self.slug.nil? || self.slug.empty?)   # Self pour l'utiliser en global

                self.slug = name.parameterize

            end

        end

    end
    
end