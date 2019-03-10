# frozen_string_literal: true

module Ukstyle
  module Generators
    module StyleHelpers
      FIELD_STYLE_MAP = {
        text_field: 'uk-input uk-width-large',
        password: 'uk-input uk-width-large',
        check_box: 'uk-checkbox',
        radio_botton: 'uk-radio',
        text_area: 'uk-textarea uk-width-large',
        date_select: 'uk-select uk-form-width-small',
        select: 'uk-select uk-width-large'
      }

      private

      def field_style(field_type)
        FIELD_STYLE_MAP[field_type&.to_sym]
      end
    end
  end
end