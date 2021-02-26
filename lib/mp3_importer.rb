class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        puts "in files, path=#{@path}"
        puts "wd=...#{Dir.getwd.sub(/.*ruby(.*)/, '\1')}"
        current_dir = Dir.getwd
        Dir.chdir(@path)
        filenames = Dir.glob("*.mp3")
        Dir.chdir(current_dir)
        filenames
    end

    def import
        Song.new_by_filename
        Song.new_by_filename
        Song.new_by_filename
        Song.new_by_filename
    end

end