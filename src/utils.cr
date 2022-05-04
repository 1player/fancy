module Utils
  def self.user_fonts_directory
    Path.new(xdg_data_home(), "fonts")
  end

  # https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html

  def self.xdg_config_home : String
    ENV["XDG_CONFIG_HOME"]? || Path["~/.config"].expand(home: true).to_s
  end

  def self.xdg_data_home : String
    ENV["XDG_DATA_HOME"]? || Path["~/.local/share"].expand(home: true).to_s
  end
end
