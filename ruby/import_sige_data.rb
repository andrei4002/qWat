class ImportSigeData
  include SqlCommands

  def run
    Dir.glob(File.join(File.join(Dir.pwd, 'tmp', 'sige_data'), '**/*.sql')).sort.each do |f|
      psql("-f #{f}")
    end
  end

  def settings
    @settings ||= YAML.load_file('config.yml')['config']
  end
end
