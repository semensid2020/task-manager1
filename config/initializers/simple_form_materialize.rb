# frozen_string_literal: true

# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.error_notification_class = 'alert alert-danger'
  config.button_class = 'mdl-button mdl-js-button mdl-button--raised'
  config.boolean_label_class = nil
  config.boolean_style = :inline
  config.item_wrapper_tag = :p

  config.wrappers :materialize_form, tag: 'div', class: 'mdl-textfield mdl-js-textfield mdl-textfield--floating-label', error_class: 'is-invalid' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :input, class: 'mdl-textfield__input'
    b.use :label, class: 'mdl-textfield__label'
    b.use :error, wrap_with: { tag: 'span', class: 'mdl-textfield__error' }
  end

  config.default_wrapper = :materialize_form
end
