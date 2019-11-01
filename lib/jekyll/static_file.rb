require 'jekyll/static_file'

module Jekyll
  class StaticFile
    # Redefine the write method to create hard links instead of copying
    # the file
    def write(dest)
      dest_path = destination(dest)
      return if File.exist? dest_path

      self.class.mtimes[path] = mtime

      FileUtils.mkdir_p(File.dirname(dest_path))
      FileUtils.ln(path, dest_path)
    end
  end
end
