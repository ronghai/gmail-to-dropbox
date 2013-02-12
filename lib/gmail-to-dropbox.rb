#!/usr/bin/env ruby
require 'gmail'
require "fileutils"
require 'dropbox_sdk'
module Gmail2Dropbox
    class Gmail2Dropbox
        ##
        # = Args
        # * options = {}
        # = Example
        # gmail_to_dropbox = Gmail2Dropbox.new({username:"gmail@gmail.com", password:"pzzwd", access_type:"dropbox", app_key:"hkm3y941q9gq", app_secret:"5lyw9dnfyx"})
        def initialize(options={})
            class << self
              class << self
                attr_accessor :username, :password, :access_type, :app_key, :app_secret
              end
            end
            meta.username = options[:username]
            meta.password = options[:password]
            meta.access_type = options[:access_type].to_sym
            meta.app_key = options[:app_key]
            meta.app_secret = options[:app_secret]
            @gmail =  Gmail.new(meta.username, meta.password)
            @dropbox_client = DropboxClient.new(dropbox_session, meta.access_type)
        end
        
        
        
        ##
        # sync attacments of unread mails with label "Dropbox" to dropbox root folder.
        # = Args
        #   * mark_read, mark email to read
        #   * :yields: gmail and return emails. if there is no block, it will use unread mails in "Dropbox"
        # = Return
        #   all unread mails
        # = Example
        #   gmail_to_dropbox.sync(false)
        def sync mark_read = true
            @gmail.login unless @gmail.logged_in?
            if block_given?
                emails = yeild @gmail
            else
                emails = @gmail.mailbox("Dropbox").emails(:unread)
                emails.reject!{|mail| mail.attachments == nil }
            end 
            emails.each{|email|
                email.attachments.each do |attachment| 
                    @dropbox_client.put_file('/'+attachment.filename, attachment.body.decoded )
                end
                email.mark(:read) if mark_read
            }
        end
        
        def disconnect
            @gmail.disconnect
        end
        
        private
        def meta
            class << self; self end
        end
        def dropbox_session
            return @session unless @session.nil?
            serial_folder =  File.expand_path('~/.dropbox')
            FileUtils.mkdir_p serial_folder          
            begin
                file = "#{serial_folder}/.dropbox.serial"
                serial = File.open(file, "rb").read
                @session = DropboxSession.deserialize(serial)
            rescue
            end
            unless @session
                while true
                    begin    
                       @session = DropboxSession.new(meta.app_key, meta.app_secret) 
                       puts "Please visit that website and hit 'Allow', then hit Enter here. \n #{@session.get_authorize_url}"; gets                       
                       File.open(file, 'w') { |file| file.write(@session.serial) }
                        break
                    rescue
                        next
                    end
                end
            end
            @session
        end
    end 
end

__END__

