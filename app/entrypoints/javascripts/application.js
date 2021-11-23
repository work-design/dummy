const modules = import.meta.glob('../images/**/*')
for (const path in modules) {
  console.log(path)  // 如果没有引用的话，无法编译进 manifest
}

import 'rails/stylesheets/css.scss' // css

import 'rails_design_engine_ui/javascripts/rails_design'
application.debug = true
