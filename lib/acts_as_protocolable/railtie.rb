require "acts_as_protocolable"
require "rails"

module ActsAsProtocolable
    class Railtie < Rails::Railtie
        initializer 'acts_as_protocolable.ar_extensions' do |app|
            ActiveRecord::Base.extend ActsAsProtocolable::ClassMethods
        end
    end
end
