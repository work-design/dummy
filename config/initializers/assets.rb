Rails.configuration.assets.paths += [
  Rails.root.join('node_modules/@fortawesome/fontawesome-free/webfonts').to_s
]

Rails.configuration.assets.excluded_paths ||= []
Rails.configuration.assets.excluded_paths << GoodJob::Engine.root.join('app/assets/vendor').to_s if defined? GoodJob
Rails.configuration.assets.excluded_paths << ActionText::Engine.root.join('app/assets/javascripts').to_s if defined? ActionText
Rails.configuration.assets.excluded_paths << ActionView::Railtie.root.join('lib/assets/compiled') if ActionView::Railtie.respond_to?(:root)
