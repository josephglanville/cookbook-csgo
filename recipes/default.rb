# Install CS:GO
include_recipe 'steamcmd::default'

csgo_dir = node['csgo']['install_dir']

directory csgo_dir do
  user 'steam'
  group 'users'
  mode 0755
end

steamcmd_app 'csgo' do
  app_id 740
  target_dir csgo_dir
end
