set :application, 'BespokeRemoteClientApp'

set :scm, :none
set :repo_url, 'dist'
set :deploy_to, '/home/deploy/bespoke_project/bespoke-remote-client'

set :keep_releases, 2

namespace :deploy do

  before :starting, :gulp_build do
   invoke 'gulp:build'
  end

  task :restart do
  end

  after :finishing, 'deploy:cleanup'

end
