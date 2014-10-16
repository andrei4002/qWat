class ImportSchema
  include SqlCommands

  def run
    psql("-c 'DROP SCHEMA #{settings['schema']} CASCADE;'")
    psql("-c 'CREATE SCHEMA #{settings['schema']};'")
    File.open('create.sql', 'w') {|f| f.write make_sql}
    psql('-f create.sql')
  end

  def make_sql
    sql = "BEGIN;\n\nDROP SCHEMA #{settings['schema']} CASCADE;\nCREATE SCHEMA #{settings['schema']};\n\n"
    create_dir = File.join(Dir.pwd, 'tmp', 'create')

    files = Dir.entries(create_dir).select do |d|
      File.directory?(File.join(create_dir, d)) && !d.start_with?('.')
    end.sort.map do |dir|
      Dir.glob(File.join(create_dir, dir, '**/*.sql')).sort
    end.flatten

    sql += concat_files(files)
    sql + "COMMIT;\n"
  end

  def settings
    @settings ||= YAML.load_file('config.yml')['config']
  end
end