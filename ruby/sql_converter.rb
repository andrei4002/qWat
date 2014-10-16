class SqlConverter
  #the default keys to look for in the sql and bash files
  STATIC_KEYS = {
      ip: '172.24.171.203',
      port: '5432',
      database_and_owner: 'sige',
      schema: 'distribution',
      test_db: 'test.temp',
      search_path: 'SET search_path = qwat, pg_catalog;',
      srid: '3844'
  }

  PWD = Dir.pwd
  SQL_DIR = File.join(PWD, '..', 'sql')
  TMP_DIR = File.join(PWD, 'tmp')
  SQL_BASH = 'sql.bash.erb'

  def settings
    @settings ||= YAML.load_file('config.yml')['config']
  end

  def reset_tmp_folder
    FileUtils.rm_rf(File.join(Dir.pwd, 'tmp'))
    FileUtils.mkpath(File.join(Dir.pwd, 'tmp'))
  end

  def convert
    reset_tmp_folder
    sql_files = Dir[File.join(SQL_DIR, '**/*.sql')]
    stripped_sql_files = sql_files.map {|file| {file => file.sub("#{SQL_DIR}", 'tmp')}}.reduce Hash.new, :merge
    stripped_sql_files.each do |original, new|
      copy_with_path original, new
    end

    Dir[File.join(TMP_DIR, '**/*.sql')].each do |filepath|
      content = File.read(filepath).force_encoding('UTF-8')
      STATIC_KEYS.each do |key, value|
        content = content.gsub(value.to_s, settings[key.to_s].to_s)
      end
      File.open(filepath, 'w') { |file| file.puts content.strip }
    end
  end

  def copy_with_path(src, dst)
    FileUtils.mkdir_p(File.dirname(dst))
    FileUtils.cp(src, dst)
  end
end
