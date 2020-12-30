require 'jekyll/static_file'

module Jekyll
  class StaticFile
    # Redefine the write method to create hard links instead of copying
    # the file
    def write(dest)
      dest_path = destination(dest)

      # If the file exists but it's not a hardlink, we remove it and
      # replace it with one.  This is useful when migrating from a site
      # already built without this plugin.
      if File.exist? dest_path
        return if hardlink? dest_path, path
        FileUtils.rm dest_path
      end

      self.class.mtimes[path] = mtime

      FileUtils.mkdir_p(File.dirname(dest_path))
      FileUtils.ln(path, dest_path)
    end

    private

    # Verifies the files are the same by checking their inode
    def hardlink?(dest_path, path)
      File.stat(path).ino == File.stat(dest_path).ino
    end
  end
end
