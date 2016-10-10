class Blog
  @@all_blog_posts = []
  @@num_all_posts = 0

  def self.all
    @@all_blog_posts
  end

  def self.add(thing)
    @@all_blog_posts << thing
    @@num_all_posts += 1
  end

  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.get_title}"
      puts "Body:\n #{post.get_content}"
      puts "Publish Date:\n #{post.get_publish_date}"
    end
  end
end

 class BlogPost < Blog
   def set_title=(title)
     @title = title
   end

   def set_content=(content)
     @content = content
   end

   def set_publish_date=(date)
     @publish_date = date
   end

   def get_content
     return @content
   end

   def get_title
     return @title
   end

   def get_publish_date
     return @publish_date
   end

   def self.create
     post = new
     puts "Name your post:"
     post.set_title = gets.chomp
     puts "Blog content:"
     post.set_content = gets.chomp
     post.set_publish_date = Time.now
     post.save
     puts "Do you want to create another post? [Y/N]"
     create if gets.chomp.downcase == 'y'
   end

   def save
     BlogPost.add(self)
   end
end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish
