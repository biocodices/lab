namespace :server do
  # after :restart, :clear_cache do
  # on roles(:web), in: :groups, limit: 3, wait: 10 do
  # # Here we can do anything such as:
  # # within release_path do
  # #   execute :rake, 'cache:clear'
  # # end
  # end
  # end

  desc 'Start the Rails server'
  task :start do
    on roles(:app) do
      hostname = capture('hostname') + '.local'
      command = "bundle exec rails server --binding=#{hostname} --daemon"
      execute "cd #{current_path}; source ~/.rails_secret; RAILS_ENV=#{fetch(:stage)} #{fetch(:rbenv_prefix)} #{command}"
    end
  end

  desc 'Stop the Rails server'
  task :stop do
    on roles(:app) do
      begin
        pid = capture "cd #{current_path}; cat tmp/pids/server.pid"
        execute "kill -9 #{pid}"
      rescue SSHKit::Command::Failed
        puts 'Looks like the server is not running. (tmp/pids/server.pid does not exist)'
      end
    end
  end

  desc 'Restart Passenger app'
  task :restart do
    on roles(:app) do
      invoke 'server:stop'
      invoke 'server:start'
    end
  end

  desc 'Tail the server log'
  task :tail_log do
    on roles(:app) do
      execute "cd #{current_path}; tail -n0 -f log/#{fetch(:stage)}.log"
    end
  end
end
