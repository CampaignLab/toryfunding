module Jekyll

  module Sanitizer
    # strip characters and whitespace to create valid filenames, also lowercase
    def sanitize_filename(name)
      if(name.is_a? Integer)
        return name.to_s
      end
      return name.tr(
  "ÀÁÂÃÄÅàáâãäåĀāĂăĄąÇçĆćĈĉĊċČčÐðĎďĐđÈÉÊËèéêëĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħÌÍÎÏìíîïĨĩĪīĬĭĮįİıĴĵĶķĸĹĺĻļĽľĿŀŁłÑñŃńŅņŇňŉŊŋÑñÒÓÔÕÖØòóôõöøŌōŎŏŐőŔŕŖŗŘřŚśŜŝŞşŠšſŢţŤťŦŧÙÚÛÜùúûüŨũŪūŬŭŮůŰűŲųŴŵÝýÿŶŷŸŹźŻżŽž",
  "AAAAAAaaaaaaAaAaAaCcCcCcCcCcDdDdDdEEEEeeeeEeEeEeEeEeGgGgGgGgHhHhIIIIiiiiIiIiIiIiIiJjKkkLlLlLlLlLlNnNnNnNnnNnNnOOOOOOooooooOoOoOoRrRrRrSsSsSsSssTtTtTtUUUUuuuuUuUuUuUuUuUuWwYyyYyYZzZzZz"
).downcase.strip.gsub(' ', '-').gsub(/[^\w.-]/, '')
    end
  end

  module Money
    def monetary(value, type="div", separator=",")
      readable = sprintf("%.0f", value.abs).split('.')
      readable = value.abs.to_s().split('.')
      readable[0] = readable[0].gsub(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1#{separator}")
      "£" + readable.join('.')
    end
  end

  module Icons
    include Sanitizer

    def monetary(value, type="div", separator=",")
      readable = sprintf("%.0f", value.abs).split('.')
      readable = value.abs.to_s().split('.')
      readable[0] = readable[0].gsub(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1#{separator}")
      "£" + readable.join('.')
    end
  end

end

Liquid::Template.register_filter(Jekyll::Money)
Liquid::Template.register_filter(Jekyll::Icons)