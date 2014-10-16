module SqlCommands
  def psql(cmd)
    `psql -h #{settings['ip']} -U #{settings['database_and_owner']} -v ON_ERROR_STOP=1 #{cmd}`
  end

  def concat_files(list)
    list.map { |file| File.read(file).strip }.join("\n")
  end
end

