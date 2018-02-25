


class GitDeclare
    @@pushes = 0
    @@stage = 0
    @@changes = []
    @@color_red = "\033[31m"
    @@color_green = "\033[32m"
    @@color_default = "\033[0m"
    @@commits = 1
    @@time = Time.now.strftime("%H:%M")
    @@date = Time.now.strftime("%d/%m/%Y")
    @@pool = nil

    def initialize; end

    def self.current_time
        Time.now.strftime("%H:%M")
    end

    def self.execute(param)
        stalker = %x{#{param}}
        
        if stalker.include? "nothing to commit" 
            
        elsif stalker.include? "insert"
            puts @@color_green + stalker + @@color_default
            puts "#{@@commits} changes saved"
            @@commits += 1
        end
    end

    def self.add_wait
        sleep 1
        GitDeclare.execute "git add ."
        sleep 1
    end

    def self.commit_loop(pool)
            GitDeclare.add_wait
            GitDeclare.execute "git commit -m \" #{pool} \""
    end

    def self.atomic(summary, pool)
        open('why_commit.txt', 'a') do |file|
            file.puts "#{@@time} - #{GitDeclare.current_time}:pool[#{pool}]"
        end
        
        @@changes << pool
        if @@stage == 1
            @@changes.map! {|item| item = "* #{item.strip}"}
            open('pull_me.txt', 'a') do |file|
                file.puts "[#{summary}]"
                file.puts "### #{@@date}[#{@@time} - #{GitDeclare.current_time}]:"
                file.puts @@changes
                file.puts
            end
        end
        GitDeclare.add_wait
        GitDeclare.execute "git commit -m \"#{pool}\""
        
    end

    def self.exit(exit_type, pool, branch)
        case exit_type
        when "new"
            GitDeclare.atomic(nil, pool)
            GitDeclare.start
        when "reset"
            puts "Wiping commits and exiting"
            system "git reset HEAD~"
        when "push"
            puts "Summarize final changes:"
            summary = gets.chomp
            @@stage = 1
            GitDeclare.atomic(summary, pool)
            GitDeclare.execute "git push -u origin #{branch}"
        else
            puts "Returning to loop"
            GitDeclare.threader(branch)
        end
    end

    def self.threader(branch)
        puts "What are you working on with the #{branch} branch?"
        @@pool = gets.chomp
        puts "You're now working on: \"#{@@pool}\" on #{branch} branch. #{@@color_red}GitDeclare is watching for changes#{@@color_default}."
        puts "When you're done with this change, press [Enter] to make a commit and start a new declaration."
        declare = Thread.new do
            
            while true
                GitDeclare.commit_loop(@@pool)
            end
            
        end
        
        gets
        declare.kill
        puts "How do you wish to exit?"
        puts "'new': logs the commit pool and starts a new declaration\n'reset': wipes commits and exits program\n'push': pushes all changes"
        exit_type = gets.chomp
        GitDeclare.exit(exit_type, @@pool, branch)
        
        
    end

    def self.start

        @@pushes > 0 ? @@pushes += 1 : open('pull_me.txt', 'w') {|f| f.puts ""}; @@pushes += 1
        puts "What branch are you working on?"
        branch = gets.chomp
        GitDeclare.threader(branch)
    end

    

end

GitDeclare.start
