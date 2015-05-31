# name: discourse-rsync
# about: Uploads backups over rsync
# version: 0.1
# authors: Mikulas Dite
# url: https://github.com/mikulas/discourse-rsync

Rails.logger.warn('RSYNC PLUGIN ROOT')
after_initialize do
  Rails.logger.warn('RSYNC PLUGIN INIT')
  def Backup.after_create_hook
    Rails.logger.warn('RSYNC HOOK')
    if SiteSetting.rsync_enabled
       Rails.logger.warn('RSYNC ENABLED.')
    end
  end
end
