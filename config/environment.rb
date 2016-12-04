# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
Amazon::Ecs.options = {
    associate_tag:     'thjki6624-22',
    AWS_access_key_id: 'AKIAJWDNEYBWYDHPEGGQ',
    AWS_secret_key:   '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'
}