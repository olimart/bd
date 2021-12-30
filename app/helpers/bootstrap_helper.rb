# frozen_string_literal: true

module BootstrapHelper
  def button_link_to(text, url, options = {})
      klass = ["btn"]
      if options.has_key?(:level)
        klass << "btn-#{options[:level]}"
        options.delete(:level)
      else
        klass << "btn-secondary"
      end
      if options.has_key?(:size)
        klass << "btn-#{options[:size]}"
        options.delete(:size)
      end

      klass << options[:class].strip.split(/\s+/) unless options[:class].blank?
      options[:class] = klass.flatten.join(" ")
      link_to text, url, options
    end

    def icon_button_link_to(text, url, **options)
      klass = [""]
      icon = options.delete(:icon) if options.has_key?(:icon)
      icon_tag = ""
      if icon
        klazz = ["bi-#{icon}"]
        if options.has_key?(:white)
          klazz << ["icon-white"]
          options.delete(:white)
        end
        icon_tag = tag.i class: klazz.join(" ")
      end

      klass << options[:class].strip.split(/\s+/) unless options[:class].blank?
      options[:class] = klass.flatten.join(" ")
      button_link_to (icon_tag + " #{text}").html_safe, url, options
    end
end
